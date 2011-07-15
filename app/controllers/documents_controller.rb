class DocumentsController < ApplicationController
  # GET /documents/1
  # GET /documents/1.xml
  def download
    params[:filename] = params[:filename1]
    if params[:filename2]
      params[:filename] += '.' + params[:filename2]
    end
    @document = Document.find_by_filename(params[:filename])
    if not @document
      render :text=>  '文件不存在1！'
      return
    end
    path = File.join('uploaded',@document.filename)
    if not FileTest.exists?(path)
      render :text=>'文件不存在2！'
      return
    end
    send_file path,:url_based_filename=>true
  end



  # POST /documents
  # POST /documents.xml
  def create
    flash[:error]='表单填写不完整' and redirect_to(:back) and return if not params[:document]['body'] or not params[:document][:project_id]
    @document = Document.new
    @document.title = params[:document][:title]
    @document.project_id	 = params[:document][:project_id]
    @document.filename = params[:document]['body'].original_filename
    respond_to do |format|
      if @document.save
        path = File.join('uploaded',@document.filename)
        File.open(path,"wb") {|f| f.write(params[:document]['body'].read)}
        flash[:notice] = 'Document was successfully created.'
        format.html { redirect_to(@document.project) }
        format.xml  { render :xml => @document, :status => :created, :location => @document }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  
end

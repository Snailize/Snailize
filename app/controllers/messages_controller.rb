class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.xml
  def index
    @messages = Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @messages }
    end
  end

  # GET /messages/new
  # GET /messages/new.xml
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @message }
    end
  end


  # POST /messages
  # POST /messages.xml
  def create
    @message = Message.new(params[:message])
    @message.user_id = current_user.id
    respond_to do |format|
      if @message.save
        flash[:notice] = '情报成功发布。'
        format.html { redirect_to(@message) }
        format.xml  { render :xml => @message, :status => :created, :location => @message }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @message.errors, :status => :unprocessable_entity }
      end
    end
  end
end

class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.xml
  def index
    if params[:codename]
      p = Project.find_by_codename(params[:codename])
      if p
        redirect_to p
        return
      end
    end
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = Project.find(params[:id])
    @log = Log.new
    @log.project_id = @project.id
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  def createlog
    @log = Log.new(params[:log])
    @project = @log.project
    redirect_to @project and return unless current_user.id == @project.person_in_charge.id
    @log.ltype=1
    @log.user_id = current_user.id
    if @log.save
      @project.finished = @project.finished + @log.change
      @project.save
      flash[:notice] = '进度成功改变'
      redirect_to @project
    else
      render :action=>'show'
    end
  end
  
  def createprob
    @log = Log.new(params[:log])
    @project = @log.project
    redirect_to @project and return unless @project.users.collect(&:id).include?(current_user.id)
    flash[:error] = '内容不能为空' and redirect_to @project and return unless @log.body.size>0
    @log.ltype=2
    @log.user_id = current_user.id
    if @log.save
      flash[:notice] = '成功添加问题报告'
      redirect_to @project
    else
      render :action=>'show'
    end
  end


  def createcomment
    @log = Log.new(params[:log])
    @project = @log.project
    flash[:error] = '内容不能为空' and redirect_to @project and return unless @log.body.size>0
    @log.ltype=3
    @log.user_id = current_user.id
    if @log.save
      flash[:notice] = '成功添加项目评估'
      redirect_to @project
    else
      render :action=>'show'
    end
  end
  
  def updatetodo
    p = Project.find params[:project][:id]
    if p.update_attribute(:todo,params[:project][:todo] )
      flash[:notice] = '近期目标成功更新。'
      redirect_to p
    else
      render :action=>'show'
    end
  end
  
  def alterusr
    p = Project.find params[:project][:id]
    if p.set_user_ids(params[:project][:user_ids])
      flash[:notice] = '成员成功更新。'
      redirect_to p
    else
      render :action=>'show'
    end
  end
  
  def alterdesc
    p = Project.find params[:project][:id]
    if p.update_attribute(:desc,params[:project][:desc])
      flash[:notice] = '项目描述成功更新。'
      redirect_to p
    else
      render :action=>'show'
    end
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    @project.person_in_charge = current_user
    @project.users << current_user
    if @project.save
      redirect_to @project
    else
      render :action=>:new
    end
  end
end

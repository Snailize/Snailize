class UsersController < ApplicationController
  
  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    # logout_keeping_session!
    @user = User.new(params[:user])
    if not params[:user][:projects]
      flash[:error] = "请选择用户参与项目"
      render :action => 'new'
      return
    end
    success = @user && @user.save
    if success && @user.errors.empty?
      # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      # self.current_user = @user # !! now logged in
      params[:user][:projects].each do |p|
        @user.projects << Project.find(p)
      end
      redirect_back_or_default('/')
      flash[:notice] = "成员添加成功，审核通过后成员头像将被添加。"
    else
      render :action => 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = '用户信息成功更改。'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end

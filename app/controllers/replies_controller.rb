class RepliesController < ApplicationController
  def create
    @reply = Reply.new(params[:reply])
    @reply.user_id = current_user.id
    flash[:error] = '内容不能为空' and redirect_to :back and return unless @reply.body.size>0
    respond_to do |format|
      if @reply.save
        flash[:notice] = '回复成功添加。'
        format.html { redirect_to(@reply.topic) }
        format.xml  { render :xml => @reply, :status => :created, :location => @reply }
      else
        format.html { redirect_to :back }
        format.xml  { render :xml => @reply.errors, :status => :unprocessable_entity }
      end
    end
  end
end
class Log < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  validates_presence_of :change
  validates_presence_of :body
  
  def validate
    t = Project.find(self.project_id).finished + self.change
    errors.add_to_base "修改后的进度不能大于1或小于0" if not ( t>=0 and t<=1 )
  end
end

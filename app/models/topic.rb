class Topic < ActiveRecord::Base
  belongs_to :author,:class_name => 'User',:foreign_key => "user_id"
  has_many :replies
end

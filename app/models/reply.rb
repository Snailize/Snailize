class Reply < ActiveRecord::Base
  validates_presence_of :body
  belongs_to :topic
  belongs_to :user
end

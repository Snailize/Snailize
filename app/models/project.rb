class Project < ActiveRecord::Base
  validates_presence_of :title,:codename
  validates_uniqueness_of :title,:codename
  belongs_to :person_in_charge,:foreign_key=>'incharge',:class_name=>'User'
  has_many :logs
  has_and_belongs_to_many :users
  has_many :documents
  def user_ids
    self.users.collect(&:id)
  end
  
  def set_user_ids(val)
    self.users = []
    self.save
    val.each do |v|
      self.users << User.find(v)
    end
    if not self.users.include?(self.person_in_charge)
      self.users << self.person_in_charge
    end
    self.save
  end
end

class Group < ActiveRecord::Base
  has_many :users
  has_many :challenges
  belongs_to :admin, class_name:"User"
end

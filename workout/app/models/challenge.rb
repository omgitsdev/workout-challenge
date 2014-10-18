class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :activities
end

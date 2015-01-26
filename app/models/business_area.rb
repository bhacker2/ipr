class BusinessArea < ActiveRecord::Base
  has_many :initiatives
  has_many :applications
  has_many :impacted_applications
  has_many :projects,  :through => :impacted_applications
 
  validates :name, presence: true
  validates :director, presence: true

end

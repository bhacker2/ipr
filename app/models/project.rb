class Project < ActiveRecord::Base
  has_many :impacted_applications 
  has_many :applications, :through => :impacted_applications
  belongs_to :initiative
end

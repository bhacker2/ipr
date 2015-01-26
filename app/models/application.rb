class Application < ActiveRecord::Base
  belongs_to :business_area
  has_many :projects, :through => :impacted_applications


end

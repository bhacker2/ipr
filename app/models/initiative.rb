class Initiative < ActiveRecord::Base
  belongs_to :business_area
  has_many :projects
end

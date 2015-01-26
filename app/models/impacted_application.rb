class ImpactedApplication < ActiveRecord::Base
  belongs_to :project
  belongs_to :application
  has_one  :business_area, :through => :application
end

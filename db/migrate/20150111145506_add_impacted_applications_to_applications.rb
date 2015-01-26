class AddImpactedApplicationsToApplications < ActiveRecord::Migration
  def change
    add_reference :applications, :application, index: true
    add_foreign_key :applications, :applications
  end
end

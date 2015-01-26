class AddSupportForRelationships < ActiveRecord::Migration
  def change
 
     remove_column :impacted_applications, :amd_id
     add_column :impacted_applications, :application_id, :integer
     add_column :projects, :initiative_id, :integer
     add_column :applications, :business_area_id, :integer
  end
end
 
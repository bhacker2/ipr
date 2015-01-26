class CreateImpactedApplications < ActiveRecord::Migration
  def change
    create_table :impacted_applications do |t|
      t.integer :amd_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end

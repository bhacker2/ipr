class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :ams_id
      t.string :short_name
      t.string :category

      t.timestamps null: false
    end
  end
end

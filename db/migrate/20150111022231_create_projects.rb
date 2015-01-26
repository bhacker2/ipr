class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :ipr_num
      t.string :ref_num
      t.string :project_name
      t.datetime :submit_date
      t.datetime :last_update_date
      t.integer :step_id

      t.timestamps null: false
    end
  end
end

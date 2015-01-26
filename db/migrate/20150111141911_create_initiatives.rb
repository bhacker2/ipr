class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :name
      t.integer :priority
      t.integer :business_area_id

      t.timestamps null: false
    end
  end
end

class CreateBusinessAreas < ActiveRecord::Migration
  def change
    create_table :business_areas do |t|
      t.string :name
      t.string :director

      t.timestamps null: false
    end
  end
end

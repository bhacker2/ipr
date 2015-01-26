class AddDetailsToProject < ActiveRecord::Migration
  def change     
    add_column :applications, :name, :string
    add_column :applications, :manager, :string
     add_column :projects, :status, :string
    
  end
end

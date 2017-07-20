class AddFieldsToMenu < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :city, :string
    add_column :menus, :country, :string
  end
end

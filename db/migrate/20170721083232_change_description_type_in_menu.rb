class ChangeDescriptionTypeInMenu < ActiveRecord::Migration[5.0]
  def change
    change_column :menus, :description, :text
  end
end

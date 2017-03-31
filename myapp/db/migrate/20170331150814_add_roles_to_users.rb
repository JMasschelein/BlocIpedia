class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin_role, :boolean
    add_column :users, :premium_role, :boolean
    add_column :users, :standard_role, :boolean
  end
end

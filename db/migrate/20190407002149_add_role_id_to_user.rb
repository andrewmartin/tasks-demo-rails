class AddRoleIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :has_one, :roles
  end
end

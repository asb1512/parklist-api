class DropParksUsersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :parks_users
  end
end

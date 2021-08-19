class CreateParksUsersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :parks, :users
  end
end

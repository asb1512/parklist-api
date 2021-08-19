class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.password :password_digest
      t.string :bio
      t.string :user_id

      t.timestamps
    end
  end
end

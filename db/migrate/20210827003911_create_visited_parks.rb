class CreateVisitedParks < ActiveRecord::Migration[6.1]
  def change
    create_table :visited_parks do |t| 
      t.integer :user_id
      t.integer :park_id

      t.timestamps
    end
  end
end

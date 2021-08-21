class AddSmallImageToParks < ActiveRecord::Migration[6.1]
  def change
    add_column :parks, :small_image, :string
  end
end

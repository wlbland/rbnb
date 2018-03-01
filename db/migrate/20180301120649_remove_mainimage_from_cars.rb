class RemoveMainimageFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :main_image
    remove_column :cars, :interior_image_1
    remove_column :cars, :interior_image_2
    remove_column :cars, :interior_image_3
    remove_column :cars, :photo_url
    add_column :cars, :photo, :string

  end


end

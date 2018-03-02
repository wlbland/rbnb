class FixPhotoVariablesforCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :main_image, :string
    add_column :cars, :interior_image_1, :string
    add_column :cars, :interior_image_2, :string
    add_column :cars, :interior_image_3, :string
    # remove_column :cars, :photos, :string
  end
end

class AddPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :photo_url, :string
  end
end

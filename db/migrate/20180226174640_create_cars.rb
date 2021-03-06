class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :make
      t.string :model
      t.integer :year
      t.integer :price_per_day
      t.boolean :available, default: true
      t.text :story
      t.string :photo

      t.timestamps
    end
  end
end

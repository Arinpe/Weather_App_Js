class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :year
      t.string :horsepower
      t.string :model
      t.string :price
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end

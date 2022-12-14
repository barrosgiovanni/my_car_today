class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :price
      t.string :brand
      t.string :model
      t.integer :year
      t.string :color
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

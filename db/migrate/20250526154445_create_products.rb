class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.decimal :original_price
      t.string :image
      t.string :category
      t.text :description
      t.float :rating
      t.integer :reviews
      t.boolean :in_stock
      t.jsonb :features

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.decimal :original_price
      t.string :image
      t.string :category
      t.text :description
      t.float :rating, default: 0.0, null: false
      t.integer :reviews, default: 0, null: false
      t.boolean :in_stock, default: false, null: false
      t.jsonb :features, default: [], null: false

      t.timestamps
    end

    add_index :products, :name
    add_index :products, :category
    add_index :products, :price
    add_index :products, :rating
  end
end

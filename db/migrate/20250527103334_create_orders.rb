class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.jsonb :details
      t.decimal :total

      t.timestamps
    end
  end
end

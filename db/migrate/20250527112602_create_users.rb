class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :password_digest, null: false
      t.string :email, null: false
      t.string :auth_token, null: false

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :auth_token, unique: true
  end
end

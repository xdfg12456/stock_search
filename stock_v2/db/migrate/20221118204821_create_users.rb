class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :account, null: false
      t.string :password
      t.string :data

      t.timestamps
    end
    add_index :users, :account, unique: true
  end
end

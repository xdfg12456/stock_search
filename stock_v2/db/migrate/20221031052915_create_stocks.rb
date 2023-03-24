class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string   :name, null: false
      t.string   :code, null: false
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :stocks, :code, unique: true
  end
end

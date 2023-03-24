class CreateThreeLegalPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :three_legal_people do |t|
      t.string  :code, null: false
      t.date    :transaction_date, null: false # 收盤日期
      t.bigint :overseas_shares
      t.bigint :credit_excess_shares
      t.bigint :proprietary_excess_shares
      t.bigint :sum_of_excess_shares
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :daily_quotes, %i[code transaction_date], unique: true
  end
end

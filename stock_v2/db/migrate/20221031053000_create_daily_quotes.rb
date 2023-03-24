class CreateDailyQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_quotes do |t|
      t.string  :code, null: false
      t.date    :transaction_date, null: false # 收盤日期
      t.bigint  :trade_volume                  # 成交股數
      t.bigint  :number_of_transactions        # 成交筆數
      t.bigint  :trade_price                   # 成交金額
      t.float   :opening_price                 # 開盤價
      t.float   :highest_price                 # 最高價
      t.float   :lowest_price                  # 最低價
      t.float   :closing_price                 # 收盤價
      t.string  :ups_and_downs                 # 漲跌
      t.float   :price_difference              # 價差
      t.float   :last_best_bid_price           # 最後揭示買價
      t.bigint  :last_best_bid_volume          # 最後揭示買量
      t.float   :last_best_ask_price           # 最後揭示賣價
      t.bigint  :last_best_ask_volume          # 最後揭示賣量
      t.float   :price_earning_ratio           # 本益比
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :daily_quotes, %i[code transaction_date], unique: true
  end
end

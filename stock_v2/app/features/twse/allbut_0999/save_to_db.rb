module Twse::Allbut0999
  class SaveToDb

    include Twse::Helpers

    def self.execute
      start_time = Time.current
      puts "#{self.class}, start_time: #{start_time.to_s}"

      file_paths = Dir["data/twse/ALLBUT0999/*/*/*"]
      end_transaction_date = DailyQuote.latest_transaction_date
      file_paths.each do |file_path|
        rows = Twse::Helpers.decode_data(file_path)
        rows = JSON.parse(rows[0])
        @file_date = rows["params"]["date"]
        next if @file_date.to_date <= end_transaction_date

        all_rows = rows["data9"].present? ? rows["data9"] : rows["data8"]
        filtered_stocks = filter_by_stocks(all_rows)
        Stock.import(filtered_stocks) if filtered_stocks.present?

        import_daily_quotes(all_rows)
      end
      puts "#{self.class}, done_time:#{Time.current}, #{(Time.current - start_time).to_s} sec"
    rescue StandardError => e
      puts "errors: #{e.inspect}, #{e.backtrace}"
    end

    private

    def self.filter_by_stocks(all_rows)
      stock_infos = []
      all_rows.each { |rows| stock_infos << { code: rows[0], name: rows[1] } }
      stocks = Stock.all.select(:code).index_by(&:code)

      need_create_stocks = []
      stock_infos.each do |stock_info|
        stock = stocks[stock_info[:code]]
        next if stock

        need_create_stocks << Stock.new(code: stock_info[:code], name: stock_info[:name])
      end
      need_create_stocks
    end

    def self.import_daily_quotes(all_rows)
      stocks = Stock.all.select(:code).index_by(&:code)

      need_create_daily_quotes = []
      all_rows.each do |row|
        stock = stocks[row[0]]

        need_create_daily_quotes << stock.daily_quotes.new(
          transaction_date: @file_date.to_date,
          trade_volume: row[2],
          number_of_transactions: row[3],
          trade_price: row[4],
          opening_price: row[5],
          highest_price: row[6],
          lowest_price: row[7],
          closing_price: row[8],
          ups_and_downs: row[9].include?("+") ? "+" : "-",
          price_difference: row[10],
          last_best_bid_price: row[11],
          last_best_bid_volume: row[12],
          last_best_ask_price: row[13],
          last_best_ask_volume: row[14],
          price_earning_ratio: row[15],
        )
      end
      DailyQuote.import(need_create_daily_quotes) if need_create_daily_quotes.present?
    end

  end
end

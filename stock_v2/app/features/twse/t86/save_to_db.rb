module Twse::T86
    class SaveToDb
        include Twse::Helpers

        def self.execute
            puts "#{self.class}, start_time: #{Time.current.to_s}"
            end_transaction_date = ThreeLegalPerson.latest_transaction_date.present? ? ThreeLegalPerson.latest_transaction_date + 1: Date.parse("2017-01-01")

            (end_transaction_date..Date.current).each do |date|
                puts "-----#{date}-----"
                data = call_api(date.strftime("%Y%m%d"))
                import_three_legal_person(data,date) if data.present?

                sleep 3
            end
        end

        def self.call_api(date)
            uri = URI.parse("#{BASE_URL}fund/T86?response=json&date=#{date}&selectType=ALL")

            response = Net::HTTP.get(uri, {'Content-Type' => 'application/json'})

            body = JSON.parse(response, :quirks_mode => true) # e.g {answer: 'because it was there'}

            data_position(body["fields"]) if body["fields"].present?

            return body["data"]
        end

        def self.import_three_legal_person(data,date)
            stocks = Stock.all.select(:code).index_by(&:code)

            need_create_three_legal_person = []
            data.each do |row|
                stock = stocks[row[0]]

                next if !stock.present?
                need_create_three_legal_person << stock.three_legal_people.new(
                    transaction_date: date,
                    overseas_shares: row[@overseas_shares_pos].to_s.gsub(",","_"),
                    credit_excess_shares: row[@credit_excess_shares_pos].to_s.gsub(",","_"),
                    proprietary_excess_shares: row[@proprietary_excess_shares_pos].to_s.gsub(",","_"),
                    sum_of_excess_shares: row[@sum_of_excess_shares_pos].to_s.gsub(",","_"),
                )
            end

            ThreeLegalPerson.import(need_create_three_legal_person) if need_create_three_legal_person.present?
        end

        def self.data_position(row)
            for i in 0..row.length
                if row[i] == "外資買賣超股數" || row[i] == "外陸資買賣超股數(不含外資自營商)"
                    @overseas_shares_pos = i
                elsif row[i] == "自營商買賣超股數"
                    @proprietary_excess_shares_pos = i
                elsif row[i] == "投信買賣超股數"
                    @credit_excess_shares_pos = i
                elsif row[i] == "三大法人買賣超股數"
                    @sum_of_excess_shares_pos = i
                end
            end
        end
    end
end

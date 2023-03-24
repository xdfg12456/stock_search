module Twse::Allbut0999
    class Download
        include Twse::Helpers

        def self.execute
            current_time = Time.current
            puts "#{self.class}, start_time: #{current_time.to_s}"
            data_path = Rails.root.join("data/twse/ALLBUT0999")
            start_data = find_last_transaction_date(current_time)
            return puts "#{self.class}, The data is latest" if start_data == false

            (start_data..Date.current).each do |date|
                month_path = data_path.join(date.year.to_s, date.month.to_s)
                file_path = month_path.join("MI_INDEX_#{date}")
                next if File.exist?(file_path) || date.sunday?

                FileUtils.mkdir_p(month_path) unless File.directory?(month_path)

                download_file(date,month_path)
                sleep 3
            end
            rescue StandardError => e
                puts "errors: #{e.inspect}, backtrace: #{e.backtrace}"
        end

        def self.find_last_transaction_date(current_time)
            latest_transaction_date = DailyQuote.latest_transaction_date

            if latest_transaction_date.present?
                return false if latest_transaction_date == current_time
                latest_transaction_date + 1.day
            else
                Date.parse("2004-02-11") # 僅支援抓 2014-02-11 之後的資料
            end
        end

        def self.download_file(date, month_path)
            remote_file = Down.download("#{BASE_URL}exchangeReport/MI_INDEX?
            response=csv&date=#{date.strftime("%Y%m%d")}&type=ALLBUT0999")
            puts "-----#{date}------"
            if remote_file.size < 200
                FileUtils.rm_rf(remote_file.path)
            else
                FileUtils.mv(remote_file.path, month_path.join("#{remote_file.original_filename}_#{date}"))
            end
        end
    end
end

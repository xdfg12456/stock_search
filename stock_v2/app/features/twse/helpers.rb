module Twse
    module Helpers

        BASE_URL = "https://www.twse.com.tw/".freeze

        def self.decode_data(file_path)
            file = File.open(file_path)
            decode_data = file.read
            decode_data.split("\r\n")
        end

        def self.remove_the_file
            file_paths = Dir["data/twse/ALLBUT0999/*/*/*"]
            file_paths.each do |file_path|
                rows=decode_data(file_path)
                if rows[0].size < 200
                    FileUtils.rm_rf(file_path)
                end
            end
        end
    end
end

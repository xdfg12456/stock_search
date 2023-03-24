namespace :twse do

  desc "auto execute all"
  task auto: :environment do
    Rake::Task["twse:download_all"].invoke
    Rake::Task["twse:save_all"].invoke
  end

  desc "download twse ALLBUT0999、TWT49U data"
  task download_all: :environment do
    Rake::Task["twse:download_file"].invoke
  end

  desc "download twse ALLBUT0999 每日收盤行情(全部(不含權證、牛熊證、可展延牛熊證)) data"
  task download_file: :environment do
    Twse::Allbut0999::Download.execute
  end

  desc "ALLBUT0999、TWT49U CVS save to database"
  task save_all: :environment do
    Rake::Task["twse:save_to_db"].invoke
  end

  desc "ALLBUT0999 CVS save to database"
  task save_to_db: :environment do
    Twse::Allbut0999::SaveToDb.execute
    Twse::T86::SaveToDb.execute
  end
end

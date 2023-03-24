Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get '/retrieve_daily_quote', to: 'stock#retrieve_daily_quote'
      get "/retrieve_muti_data", to: "stock#retrieve_muti_data"
      get "/retrieve_three_legal_people", to: "stock#retrieve_three_legal_person"
    end
  end
end

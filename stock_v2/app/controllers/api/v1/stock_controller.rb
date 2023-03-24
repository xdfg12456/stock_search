module Api
    module V1
        class StockController < ApplicationController
            def retrieve_daily_quote
                stock = Stock.find_by code: params[:stockCode]
                if !stock.present?
                    render json: {status: 'error', message:"error"},:status => 404
                    return
                end

                if params[:date] == "lastest"
                    date = stock.daily_quotes.latest_transaction_date
                    response = stock.daily_quotes.find_by transaction_date: date
                    puts response.inspect
                else
                    response = stock.daily_quotes.find_by transaction_date: params[:date]
                end

                if response.present?
                    render json: {status: 'SUCCESS', message:"retrieve success", body:response},status: :ok
                else
                    render json: {status: 'error', message:"error"},:status => 404
                end
            end

            def retrieve_muti_data
                stock = Stock.find_by code: params[:stockCode]
                response = stock.daily_quotes.order("transaction_date DESC").limit(params[:numOfData])
                response = response.map {|data| {
                    "code" => data["code"],
                    "transaction_date" => data["transaction_date"],
                    "trade_volume" => data["trade_volume"],
                    "number_of_transactions" => data["number_of_transactions"],
                    "trade_price" => data["trade_price"],
                    "opening_price" => data["opening_price"],
                    "highest_price" => data["highest_price"],
                    "lowest_price" => data["lowest_price"],
                    "closing_price" => data["closing_price"],
                    "ups_and_downs" => data["ups_and_downs"],
                    "price_difference" => data["price_difference"],
                    "last_best_bid_price" => data["last_best_bid_price"],
                    "last_best_bid_volume" => data["last_best_bid_volume"],
                    "last_best_ask_price" => data["last_best_ask_price"],
                    "last_best_ask_volume" => data["last_best_ask_volume"],
                    "price_earning_ratio" => data["price_earning_ratio"],
                    }}
                if response.present?
                    render json: {status: 'SUCCESS', message:"retrieve success", body:response},status: :ok
                else
                    render json: {status: 'error', message:"error"},:status => 404
                end
            end

            def retrieve_three_legal_person
                stock = Stock.find_by code: params[:stockCode]
                response = stock.three_legal_people.order("transaction_date DESC").limit(params[:numOfData])
                if response.present?
                    render json: {status: 'SUCCESS', message:"retrieve success", body:response},status: :ok
                else
                    render json: {status: 'error', message:"error"},:status => 404
                end
            end
        end
    end
end

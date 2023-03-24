module Api
    module V1
        class UserController < ApplicationController

            def add_data
            end

            def delete_data
            end

            def retrieve_muti_data
                user = User.find_by account: params[:account]
            end

            def create
                user = User.new({name: params[:name], account: params[:account], password: params[:password], data: "{\"data\": []}"})
                if user.save
                    render json: {status: 'SUCCESS', message:"create success"},status: :ok
                else
                    render json: {status: 'ERROR', message:"create faild"},:status => 500
                end
            end
        end
    end
end

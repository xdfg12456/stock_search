class User < ApplicationRecord
    validates :account, uniqueness: true

    scope :add, -> (account, data) do
        user = User.find_by account: account
        all_data = JSON.parse(user.data)
        all_data["data"].append data.to_s
        user.update(data: all_data)
    end
    scope :delete_data, -> (account, data) do
        user = User.find_by account: account
        all_data = JSON.parse(user.data)
        all_data["data"].delete data.to_s
        user.update(data: all_data)
    end
end

class User < ApplicationRecord
    has_secure_password
    has_many :prices
    has_many :travel_destinations, through: :locations

    validates :username, uniqueness: true
end

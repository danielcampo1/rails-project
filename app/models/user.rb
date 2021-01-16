class User < ApplicationRecord
    has_secure_password
    has_many :locations
    has_many :travel_destinations, through: :locations

    validates :username, presence: true, uniqueness: true
end

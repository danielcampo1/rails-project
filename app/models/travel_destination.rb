class TravelDestination < ApplicationRecord
    has_many :prices
    has_many :users, through: :locations
end

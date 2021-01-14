class Location < ApplicationRecord
    belongs_to :user
    belongs_to :travel_destination
end

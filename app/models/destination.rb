class Destination < ApplicationRecord
    belongs_to :user
    belongs_to :country

    validates :excursion, :best_moment, :time_of_visit, presence: true
end

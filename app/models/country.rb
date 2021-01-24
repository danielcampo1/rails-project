class Country < ApplicationRecord
    has_many :destinations
    has_many :users, through: :destinations

    scope :order_country, ->{ order('name ASC')}
end

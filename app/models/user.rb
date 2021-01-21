class User < ApplicationRecord
    has_secure_password
    has_many :destinations
    has_many :countries, through: :destinations

    validates :username, presence: true, uniqueness: true
end

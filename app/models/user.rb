class User < ApplicationRecord
    has_secure_password
    has_many :destinations
    has_many :countries, through: :destinations

    # validates :username, presence: true, uniqueness: true

    def self.github_omniauth(auth)
        self.find_or_create_by(username: auth[:info][:nickname]) do |user|
            user.username = auth[:info][:nickname]
            user.password = SecureRandom.hex(20)
        end
    end

end

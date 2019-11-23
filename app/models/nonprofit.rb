class Nonprofit < ApplicationRecord
    
    has_secure_password # This is for BCrypt magic

    has_many :volunteer_nonprofits
    has_many :event_nonprofits
    has_many :volunteers, through: :volunteer_nonprofits
    has_many :events, through: :event_nonprofits
#address & All
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password_digest, presence: true

end

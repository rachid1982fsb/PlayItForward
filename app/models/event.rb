class Event < ApplicationRecord
    has_many :event_volunteers
    has_many :event_nonprofits
    has_many :volunteers, through: :event_volunteers
    has_many :nonprofits, through: :event_nonprofits

    validates :description, presence: true
    validates :name, presence: true
    validates :location, presence: true
    validates :date, presence: true
end

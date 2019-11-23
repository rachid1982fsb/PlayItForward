class Volunteer < ApplicationRecord
    has_many :volunteer_nonprofits
    has_many :event_volunteers
    has_many :nonprofits, through: :volunteer_nonprofits
    has_many :events, through: :event_nonprofits
end

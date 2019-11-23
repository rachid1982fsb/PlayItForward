class Nonprofit < ApplicationRecord
    has_many :volunteer_nonprofits
    has_many :event_nonprofits
    has_many :volunteers, through: :volunteer_nonprofits
    has_many :events, through: :event_nonprofits
end

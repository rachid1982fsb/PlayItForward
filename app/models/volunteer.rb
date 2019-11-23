class Volunteer < ApplicationRecord
    STATUSES = ["Grunt", "Private", "Corporal", "Seargant", "Seargant Major", "General", "Global MEGALORD"]
    
    has_secure_password # This is for BCrypt magic

    has_many :volunteer_nonprofits
    has_many :event_volunteers
    has_many :nonprofits, through: :volunteer_nonprofits
    has_many :events, through: :event_nonprofits

    validates :username, presence: true , uniqueness: true
    validates :name, presence: true
    validates :password_digest, presence: true
    validates :dob, presence: true
    validate :validate_age

  def validate_age
    year = Time.now.to_s[0..3].to_i
    v_year = dob[0..3].to_i
      if dob.present? && (year - v_year) > 16
          errors.add(:dob, 'You should be over 16 years old.')
          puts "no you shoud be over 16 YEEEEEEE"
      end
  end
end

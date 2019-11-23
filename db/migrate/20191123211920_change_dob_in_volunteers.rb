class ChangeDobInVolunteers < ActiveRecord::Migration[6.0]
  def change
    change_column(:volunteers, :dob, :date)
  end
end

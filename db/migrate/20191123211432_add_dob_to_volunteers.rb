class AddDobToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :dob, :string
  end
end

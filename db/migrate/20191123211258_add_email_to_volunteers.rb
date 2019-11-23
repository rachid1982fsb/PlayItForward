class AddEmailToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :email, :string
  end
end

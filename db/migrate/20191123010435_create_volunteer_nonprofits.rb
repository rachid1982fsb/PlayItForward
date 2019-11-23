class CreateVolunteerNonprofits < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteer_nonprofits do |t|
      t.integer :hours
      t.string :description
      t.integer :multiplier
      t.references :volunteer, null: false, foreign_key: true
      t.references :nonprofit, null: false, foreign_key: true

      t.timestamps
    end
  end
end

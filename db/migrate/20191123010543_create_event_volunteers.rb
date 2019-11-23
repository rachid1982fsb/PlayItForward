class CreateEventVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :event_volunteers do |t|
      t.references :event, null: false, foreign_key: true
      t.references :volunteer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

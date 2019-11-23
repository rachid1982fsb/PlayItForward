class CreateEventNonprofits < ActiveRecord::Migration[6.0]
  def change
    create_table :event_nonprofits do |t|
      t.references :event, null: false, foreign_key: true
      t.references :nonprofit, null: false, foreign_key: true

      t.timestamps
    end
  end
end

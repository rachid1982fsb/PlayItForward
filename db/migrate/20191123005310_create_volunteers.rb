class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :organization
      t.string :image
      t.string :biography
      t.string :status
      t.integer :level
      t.integer :points

      t.timestamps
    end
  end
end

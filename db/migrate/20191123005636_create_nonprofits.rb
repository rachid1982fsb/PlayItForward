class CreateNonprofits < ActiveRecord::Migration[6.0]
  def change
    create_table :nonprofits do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :address
      t.string :logo
      t.string :description
      t.string :mission

      t.timestamps
    end
  end
end

class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|
      t.text :inspiration
      t.string :location_on_body
      t.date :date_started
      t.date :date_completed
      t.time :hours_spent
      t.integer :owner_id
      t.integer :artist_id

      t.timestamps
    end
  end
end

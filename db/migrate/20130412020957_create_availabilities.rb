class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :date
      t.string :promotion
      t.integer :venue_id

      t.timestamps
    end
  end
end

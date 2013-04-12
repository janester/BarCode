class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :image
      t.string :name
      t.string :user_id

      t.timestamps
    end
  end
end

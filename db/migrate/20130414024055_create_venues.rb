class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :user_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end

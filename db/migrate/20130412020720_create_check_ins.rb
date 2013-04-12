class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.float :latitude
      t.float :longitude
      t.integer :user_id
      t.integer :stop_id

      t.timestamps
    end
  end
end

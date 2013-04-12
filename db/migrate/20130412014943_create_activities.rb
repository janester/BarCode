class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :text
      t.string :type
      t.integer :venue_id

      t.timestamps
    end
  end
end

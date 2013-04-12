class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :type
      t.integer :user_id
      t.integer :stop_id
      t.timestamps
    end
  end
end

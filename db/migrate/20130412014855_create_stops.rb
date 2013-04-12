class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :pub_crawl_id
      t.integer :venue_id
      t.integer :activity_id
      t.timestamps
    end
  end
end

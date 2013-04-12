class CreatePubCrawls < ActiveRecord::Migration
  def change
    create_table :pub_crawls do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :name

      t.timestamps
    end
  end
end

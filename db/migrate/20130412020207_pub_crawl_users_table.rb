class PubCrawlUsersTable < ActiveRecord::Migration
  def change
    create_table :pub_crawls_users, :id => false do |t|
      t.integer :pub_crawl_id
      t.integer :item_id
    end
  end
end

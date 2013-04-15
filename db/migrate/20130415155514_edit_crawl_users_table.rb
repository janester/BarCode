class EditCrawlUsersTable < ActiveRecord::Migration
  def change
    remove_column :pub_crawls_users, :item_id
    add_column :pub_crawls_users, :user_id, :integer
  end
end

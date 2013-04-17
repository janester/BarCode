class ChangeTypeColumnInResponsesTable < ActiveRecord::Migration
  def change
    remove_column :responses, :type
    add_column :responses, :response_type, :string
  end
end

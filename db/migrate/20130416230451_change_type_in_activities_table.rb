class ChangeTypeInActivitiesTable < ActiveRecord::Migration
  def change
    remove_column :activities, :type
    add_column :activities, :response_type, :string
  end
end

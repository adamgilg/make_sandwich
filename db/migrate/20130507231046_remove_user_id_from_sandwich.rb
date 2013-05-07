class RemoveUserIdFromSandwich < ActiveRecord::Migration
  def change
    remove_column :sandwiches, :user_id
  end
end

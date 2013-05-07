class AddColumnToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :description, :text
  end
end

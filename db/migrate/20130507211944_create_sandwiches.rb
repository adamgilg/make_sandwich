class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.integer :user_id
      t.string :name
      
      t.timestamps
    end
  end
end

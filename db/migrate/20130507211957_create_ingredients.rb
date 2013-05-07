class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :price
      t.string :name
      
      t.timestamps
    end
  end
end

class CreateSandwichIngredients < ActiveRecord::Migration
  def change
    create_table :sandwich_ingredients do |t|
      t.integer :sandwich_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end

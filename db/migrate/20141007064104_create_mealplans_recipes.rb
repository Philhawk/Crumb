class CreateMealplansRecipes < ActiveRecord::Migration
  def change
    create_table :mealplans_recipes do |t|
    	t.integer :mealplan_id
    	t.integer :recipe_id
    end
  end
end

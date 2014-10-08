class CreateRecipes < ActiveRecord::Migration
	
  def change
    create_table :recipes do |t|
	t.string :name
	t.string :recipe_unique_id
	t.string :cuisine
	t.integer :calories
	t.text :ingredients
	t.integer :preparationtime
	t.text :image
	t.timestamps
    end
  end
end



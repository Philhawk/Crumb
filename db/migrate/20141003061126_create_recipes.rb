class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
	t.string :name
	t.integer :calories
	t.string :ingredients
	t.string :directions
	t.integer :preparationtime
	t.text :image
    end
  end
end



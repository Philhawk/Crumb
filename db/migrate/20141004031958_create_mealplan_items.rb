class CreateMealplanItems < ActiveRecord::Migration
  def change
    create_table :mealplan_items do |t|
      t.integer :mealplan_id
      t.integer :recipe_id
      t.integer :order
      t.timestamps
    end
  end
end

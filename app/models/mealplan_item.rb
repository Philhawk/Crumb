# == Schema Information
#
# Table name: mealplan_items
#
#  id          :integer          not null, primary key
#  mealplan_id :integer
#  recipe_id   :integer
#  order       :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class MealplanItem < ActiveRecord::Base
	belongs_to :mealplan 
	belongs_to :recipe
end

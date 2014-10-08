# == Schema Information
#
# Table name: recipes
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  recipe_unique_id :string(255)
#  cuisine          :string(255)
#  calories         :integer
#  ingredients      :string(255)
#  preparationtime  :integer
#  image            :text
#  created_at       :datetime
#  updated_at       :datetime
#

class Recipe < ActiveRecord::Base
	has_and_belongs_to_many :mealplans
	 validates :name, uniqueness: true
	 validates :recipe_unique_id, uniqueness: true
end

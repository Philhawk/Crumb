# == Schema Information
#
# Table name: recipes
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  calories        :integer
#  ingredients     :string(255)
#  directions      :string(255)
#  preparationtime :integer
#  image           :text
#

class Recipe < ActiveRecord::Base
	has_and_belongs_to_many :mealplans
end

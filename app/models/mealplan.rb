# == Schema Information
#
# Table name: mealplans
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Mealplan < ActiveRecord::Base
	belongs_to :user
	has_many :mealplan_items
	has_many :recipes, :through => :mealplan_items
	
end

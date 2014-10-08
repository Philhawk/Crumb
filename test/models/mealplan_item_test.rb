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

require 'test_helper'

class MealplanItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

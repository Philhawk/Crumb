# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  avatar          :text             default("http://www.zaarly.com/assets/hammer/session/blank-avatar.jpg")
#

class User < ActiveRecord::Base
	has_secure_password 
	has_many :mealplans
	has_many :recipes, :through => :mealplans

	validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 3}
	validates :email, :presence => true, :uniqueness => true
end

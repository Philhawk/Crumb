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
#  avatar          :text             default("https://pbs.twimg.com/profile_images/378800000186293328/5a2b472f4b58080a1f45ca9884cf03d9.jpeg")
#

class User < ActiveRecord::Base
	has_secure_password 
	has_many :mealplans
	has_many :recipes, :through => :mealplans

	validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 3}
	validates :email, :presence => true, :uniqueness => true
end

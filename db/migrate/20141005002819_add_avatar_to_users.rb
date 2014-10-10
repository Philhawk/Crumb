class AddAvatarToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :avatar, :text, :default => 'http://www.zaarly.com/assets/hammer/session/blank-avatar.jpg'
  end
end

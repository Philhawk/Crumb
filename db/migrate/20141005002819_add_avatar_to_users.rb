class AddAvatarToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :avatar, :text, :default => 'https://pbs.twimg.com/profile_images/378800000186293328/5a2b472f4b58080a1f45ca9884cf03d9.jpeg'
  end
end

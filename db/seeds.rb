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
User.destroy_all
Recipe.destroy_all
Mealplan.destroy_all


u1 = User.create(:name => 'Phil')
u2 = User.create(:name => 'Andy')
u3 = User.create(:name => 'Joel')

r1 = Recipe.create(:name => 'Indian Spiced Lentils', :image => 'http://lh6.ggpht.com/Al4LoBMSvXBJDOMxVaijYD0lalbx09nSm3aOzIjvk85nGwVIWQlvCyhijQN8gwwPCowe0Zx4I4criJme_oc-yA=s230-c', :calories => '270', :cuisine => 'Indian')
r2 = Recipe.create(:name => 'Indian Saag', :image => 'http://lh4.ggpht.com/EnHy4ihWsfVjO3PDwBaTUV6nj4UVukrd4EsYdzlvNIuCZzJDRuapGP2jsqZi1pZo08_1wYTSeDSgH7IBSYRWCA=s230-c', :calories => '360', :cuisine => 'Indian')
r3 = Recipe.create(:name => 'Dhal Makhani', :image => 'http://lh5.ggpht.com/hLjIwLBWtpw5e8S0vWawXMvXTUzQ488_TshutLaCMfdXC2KboQdPngPdGLhyMXiRjhDny4nMnSAY1PSyge8X6EQ=s230-c', :calories => '360', :cuisine => 'Indian')
r4 = Recipe.create(:name => 'Red Lentil and Potato Dhal', :image => 'http://lh5.ggpht.com/Nu_YiicWK3cDa-9tAtM-7WWxfXcC5vonfsRXuhp7xSY1_AbLZRJ4PsnS8EAVw1yFxZdplFkExg8LHGVGZgINhg=s230-c', :calories => '510', :cuisine => 'Indian')
r5 = Recipe.create(:name => 'Indian Style Rice', :image => 'http://lh3.ggpht.com/xvI1TJJYs_ouYDlf9sAxFCCjaZa36IQbglombdXpLSj4MjxUOXffF-cCM029caUAuYuE7E8VLZYdlWA8CKncrg=s230-c', :calories => '310', :cuisine => 'Indian')
r6 = Recipe.create(:name => 'Anda Bhurji', :image => 'http://lh5.ggpht.com/Iv7q6jg4HQPQzU988Fdtp3DWixcetuen41U9i3JWoZ-U1Ta-0Bnn9DKulmfmSdR6boaw9Ru6hl4TyjwksxkM5g=s230-c', :calories => '410', :cuisine => 'Indian')
r7 = Recipe.create(:name => 'Chinese Beef Broccoli', :image => 'http://lh4.ggpht.com/obWpIuRmA5axRDNNyGCAlhBA6CweOkg2sozzkDQgfvcgiz8Y_GAx7Tggl6MDzV9nwrRGAB-o1WWVmbCjsedi=s230-c', :calories => '140', :cuisine => 'Chinese')
r8 = Recipe.create(:name => 'Sichuan Spare Ribs', :image => 'http://lh6.ggpht.com/vYcV_FuJOkALK_cGHWhq42oYyaoIyftGoQBesOFyELDXK04yFExNr97ephYzs9MA-auN0F6BUz3hVH5UsyKGjMg=s230-c', :calories => '740', :cuisine => 'Chinese')
r9 = Recipe.create(:name => 'Dhal Makhani', :image => 'http://lh5.ggpht.com/hLjIwLBWtpw5e8S0vWawXMvXTUzQ488_TshutLaCMfdXC2KboQdPngPdGLhyMXiRjhDny4nMnSAY1PSyge8X6EQ=s230-c', :calories => '360', :cuisine => 'Indian')
r10 = Recipe.create(:name => 'Red Lentil and Potato Dhal', :image => 'http://lh5.ggpht.com/Nu_YiicWK3cDa-9tAtM-7WWxfXcC5vonfsRXuhp7xSY1_AbLZRJ4PsnS8EAVw1yFxZdplFkExg8LHGVGZgINhg=s230-c', :calories => '510', :cuisine => 'Indian')
r11 = Recipe.create(:name => 'Indian Style Rice', :image => 'http://lh3.ggpht.com/xvI1TJJYs_ouYDlf9sAxFCCjaZa36IQbglombdXpLSj4MjxUOXffF-cCM029caUAuYuE7E8VLZYdlWA8CKncrg=s230-c', :calories => '310', :cuisine => 'Indian')
r12 = Recipe.create(:name => 'Anda Bhurji', :image => 'http://lh5.ggpht.com/Iv7q6jg4HQPQzU988Fdtp3DWixcetuen41U9i3JWoZ-U1Ta-0Bnn9DKulmfmSdR6boaw9Ru6hl4TyjwksxkM5g=s230-c', :calories => '410', :cuisine => 'Indian')

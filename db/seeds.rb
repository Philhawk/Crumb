User.destroy_all
Recipe.destroy_all
Mealplan.destroy_all


u1 = User.create(:name => 'Phil')
u2 = User.create(:name => 'Tarun')
u3 = User.create(:name => 'Joel')

r1 = Recipe.create(:name => 'Malaysian chicken curry')
r2 = Recipe.create(:name => 'Fried Chicken')
r3 = Recipe.create(:name => 'Potato Mash')
r4 = Recipe.create(:name => 'Nasi Lemak')
r5 = Recipe.create(:name => 'Pepperoni Pizza')
r6 = Recipe.create(:name => 'Fried Rice')

m1 = Mealplan.create(:name => 'Spicy plan')
m2 = Mealplan.create(:name => 'Fast Foos')
m3 = Mealplan.create(:name => 'Random Plan')

m1.recipes << r1 << r4
m2.recipes << r2 << r5
m2.recipes << r3 << r6

u1.mealplans << m1
u2.mealplans << m2
u3.mealplans << m3

require 'uri'

class RecipesController < ApplicationController
	
	def index
	end
	def results
		if params[:caloricinput].present?
			@calories = params[:caloricinput]
		else
			@calories = 10000
		end

	 	@recipes = Recipe.where(:cuisine => params[:cuisine]).where("calories <= ?", @calories)
	 	if @recipes.length == 0
	 		redirect_to "#{yummly_path}?cuisine=#{params[:cuisine]}&caloricinput=#{@calories}"
	 	end
	end
	def yummly

#		url = URI.escape("http://api.yummly.com/v1/api/recipes?_app_id=ec4625c7&_app_key=d6f202e7d0d2324d28ef102ad8a41204&nutrition.ENERC_KCAL.min=0&nutrition.CHOCDF.max=#{params[:caloricinput]}&allowedCuisine[]=cuisine^cuisine-#{params[:cuisine]}")
		recipe_count = @recipes = Recipe.where(:cuisine => params[:cuisine]).where("calories <= ?", params[:caloricinput]).count
		url = URI.escape "http://api.yummly.com/v1/api/recipes?_app_id=ec4625c7&_app_key=d6f202e7d0d2324d28ef102ad8a41204&q=&start=#{recipe_count}&maxResult=100&nutrition.CHOCDF.max=#{params[:caloricinput]}&allowedCuisine[]=cuisine^cuisine-#{params[:cuisine].downcase}"
		puts url
		#raise url
		@dishes = HTTParty.get(url)
		recipes = @dishes['matches']
	 	recipes.each do |r|		
			recipe = Recipe.new :ingredients => r['ingredients'].join(', '), :name => r['recipeName'], :preparationtime => r['totalTimeInSeconds'], :recipe_unique_id => r['id'], :image => r['smallImageUrls'].first.gsub('s90','s150'), :cuisine => params[:cuisine]
			recipe.calories = params[:caloricinput] # XXX Haxx
			recipe.save
	 	end
	 	@recipes = Recipe.where(:cuisine => params[:cuisine]).where("calories <= ?", params[:caloricinput])
	 	render :results

	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def add
		@recipe = Recipe.find(params[:id])
		@current_user.recipes << @recipes
		redirect_to user_path(@current_user)
	end

end
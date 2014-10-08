require 'uri'

class RecipesController < ApplicationController
	
	def index
	end
	def results
	 	@recipes = Recipe.where(:cuisine => params[:cuisine]).where("calories" <= params[:caloricinput])
	end
	def yummly

#		url = URI.escape("http://api.yummly.com/v1/api/recipes?_app_id=ec4625c7&_app_key=d6f202e7d0d2324d28ef102ad8a41204&nutrition.ENERC_KCAL.min=0&nutrition.CHOCDF.max=#{params[:caloricinput]}&allowedCuisine[]=cuisine^cuisine-#{params[:cuisine]}")
		url = URI.escape "http://api.yummly.com/v1/api/recipes?_app_id=ec4625c7&_app_key=d6f202e7d0d2324d28ef102ad8a41204&q=&allowedCuisine[]=cuisine^cuisine-#{params[:cuisine].downcase}"
		puts url
		#raise url
		@dishes = HTTParty.get(url)
		recipes = @dishes['matches']
	 	recipes.each do |r|		
			Recipe.create :ingredients => r['ingredients'].join(', '), :name => r['recipeName'], :preparationtime => r['totalTimeInSeconds'], :recipe_unique_id => r['id'], :image => r['hostedMediumUrl'] 
	 	end
	end
end
# app/services/recipe_service.rb
require 'httparty'

class RecipeService
  include HTTParty
  base_uri 'www.themealdb.com/api/json/v1/1'
  def initialize(params = {})
    @options = { query: params }
  end

  def search(term="tacos")
    response = self.class.get("/search.php?s=#{term}")
    recipes = response["meals"].map do |meal|
      Recipe.create!(
          name: meal["strMeal"],
          ingredients: parse_ingredients(meal),
          instructions: meal["strInstructions"],
          image: meal["strMealThumb"]
      )
    end
    recipes
  end

  private

  def parse_ingredients(meal)
    ingredients = []
    (1..20).each do |i|
      ingredient = meal["strIngredient#{i}"]
      measure = meal["strMeasure#{i}"]

      break if ingredient.blank? || measure.blank?

      ingredients << { ingredient: ingredient.strip, measure: measure.strip }
    end
    ingredients
  end
end

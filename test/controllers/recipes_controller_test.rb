require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference("Recipe.count") do
      post recipes_url, params: { recipe: { grocery_list: @recipe.grocery_list, image_url: @recipe.image_url, ingredient_1: @recipe.ingredient_1, ingredient_10: @recipe.ingredient_10, ingredient_11: @recipe.ingredient_11, ingredient_12: @recipe.ingredient_12, ingredient_13: @recipe.ingredient_13, ingredient_14: @recipe.ingredient_14, ingredient_15: @recipe.ingredient_15, ingredient_16: @recipe.ingredient_16, ingredient_17: @recipe.ingredient_17, ingredient_18: @recipe.ingredient_18, ingredient_19: @recipe.ingredient_19, ingredient_2: @recipe.ingredient_2, ingredient_20: @recipe.ingredient_20, ingredient_3: @recipe.ingredient_3, ingredient_4: @recipe.ingredient_4, ingredient_5: @recipe.ingredient_5, ingredient_6: @recipe.ingredient_6, ingredient_7: @recipe.ingredient_7, ingredient_8: @recipe.ingredient_8, ingredient_9: @recipe.ingredient_9, instructions: @recipe.instructions, name: @recipe.name, source_url: @recipe.source_url, thumbnail_url: @recipe.thumbnail_url, youtube_url: @recipe.youtube_url } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { grocery_list: @recipe.grocery_list, image_url: @recipe.image_url, ingredient_1: @recipe.ingredient_1, ingredient_10: @recipe.ingredient_10, ingredient_11: @recipe.ingredient_11, ingredient_12: @recipe.ingredient_12, ingredient_13: @recipe.ingredient_13, ingredient_14: @recipe.ingredient_14, ingredient_15: @recipe.ingredient_15, ingredient_16: @recipe.ingredient_16, ingredient_17: @recipe.ingredient_17, ingredient_18: @recipe.ingredient_18, ingredient_19: @recipe.ingredient_19, ingredient_2: @recipe.ingredient_2, ingredient_20: @recipe.ingredient_20, ingredient_3: @recipe.ingredient_3, ingredient_4: @recipe.ingredient_4, ingredient_5: @recipe.ingredient_5, ingredient_6: @recipe.ingredient_6, ingredient_7: @recipe.ingredient_7, ingredient_8: @recipe.ingredient_8, ingredient_9: @recipe.ingredient_9, instructions: @recipe.instructions, name: @recipe.name, source_url: @recipe.source_url, thumbnail_url: @recipe.thumbnail_url, youtube_url: @recipe.youtube_url } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference("Recipe.count", -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end

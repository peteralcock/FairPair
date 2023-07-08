require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "should create recipe" do
    visit recipes_url
    click_on "New recipe"

    fill_in "Grocery list", with: @recipe.grocery_list
    fill_in "Image url", with: @recipe.image_url
    fill_in "Ingredient 1", with: @recipe.ingredient_1
    fill_in "Ingredient 10", with: @recipe.ingredient_10
    fill_in "Ingredient 11", with: @recipe.ingredient_11
    fill_in "Ingredient 12", with: @recipe.ingredient_12
    fill_in "Ingredient 13", with: @recipe.ingredient_13
    fill_in "Ingredient 14", with: @recipe.ingredient_14
    fill_in "Ingredient 15", with: @recipe.ingredient_15
    fill_in "Ingredient 16", with: @recipe.ingredient_16
    fill_in "Ingredient 17", with: @recipe.ingredient_17
    fill_in "Ingredient 18", with: @recipe.ingredient_18
    fill_in "Ingredient 19", with: @recipe.ingredient_19
    fill_in "Ingredient 2", with: @recipe.ingredient_2
    fill_in "Ingredient 20", with: @recipe.ingredient_20
    fill_in "Ingredient 3", with: @recipe.ingredient_3
    fill_in "Ingredient 4", with: @recipe.ingredient_4
    fill_in "Ingredient 5", with: @recipe.ingredient_5
    fill_in "Ingredient 6", with: @recipe.ingredient_6
    fill_in "Ingredient 7", with: @recipe.ingredient_7
    fill_in "Ingredient 8", with: @recipe.ingredient_8
    fill_in "Ingredient 9", with: @recipe.ingredient_9
    fill_in "Instructions", with: @recipe.instructions
    fill_in "Name", with: @recipe.name
    fill_in "Source url", with: @recipe.source_url
    fill_in "Thumbnail url", with: @recipe.thumbnail_url
    fill_in "Youtube url", with: @recipe.youtube_url
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "should update Recipe" do
    visit recipe_url(@recipe)
    click_on "Edit this recipe", match: :first

    fill_in "Grocery list", with: @recipe.grocery_list
    fill_in "Image url", with: @recipe.image_url
    fill_in "Ingredient 1", with: @recipe.ingredient_1
    fill_in "Ingredient 10", with: @recipe.ingredient_10
    fill_in "Ingredient 11", with: @recipe.ingredient_11
    fill_in "Ingredient 12", with: @recipe.ingredient_12
    fill_in "Ingredient 13", with: @recipe.ingredient_13
    fill_in "Ingredient 14", with: @recipe.ingredient_14
    fill_in "Ingredient 15", with: @recipe.ingredient_15
    fill_in "Ingredient 16", with: @recipe.ingredient_16
    fill_in "Ingredient 17", with: @recipe.ingredient_17
    fill_in "Ingredient 18", with: @recipe.ingredient_18
    fill_in "Ingredient 19", with: @recipe.ingredient_19
    fill_in "Ingredient 2", with: @recipe.ingredient_2
    fill_in "Ingredient 20", with: @recipe.ingredient_20
    fill_in "Ingredient 3", with: @recipe.ingredient_3
    fill_in "Ingredient 4", with: @recipe.ingredient_4
    fill_in "Ingredient 5", with: @recipe.ingredient_5
    fill_in "Ingredient 6", with: @recipe.ingredient_6
    fill_in "Ingredient 7", with: @recipe.ingredient_7
    fill_in "Ingredient 8", with: @recipe.ingredient_8
    fill_in "Ingredient 9", with: @recipe.ingredient_9
    fill_in "Instructions", with: @recipe.instructions
    fill_in "Name", with: @recipe.name
    fill_in "Source url", with: @recipe.source_url
    fill_in "Thumbnail url", with: @recipe.thumbnail_url
    fill_in "Youtube url", with: @recipe.youtube_url
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "should destroy Recipe" do
    visit recipe_url(@recipe)
    click_on "Destroy this recipe", match: :first

    assert_text "Recipe was successfully destroyed"
  end
end

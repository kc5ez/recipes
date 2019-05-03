require 'test_helper'

class RecipeCookbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_cookbook = recipe_cookbooks(:one)
  end

  test "should get index" do
    get recipe_cookbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_cookbook_url
    assert_response :success
  end

  test "should create recipe_cookbook" do
    assert_difference('RecipeCookbook.count') do
      post recipe_cookbooks_url, params: { recipe_cookbook: { blurb: @recipe_cookbook.blurb, calories: @recipe_cookbook.calories, category: @recipe_cookbook.category, difficulty: @recipe_cookbook.difficulty, name: @recipe_cookbook.name, time: @recipe_cookbook.time } }
    end

    assert_redirected_to recipe_cookbook_url(RecipeCookbook.last)
  end

  test "should show recipe_cookbook" do
    get recipe_cookbook_url(@recipe_cookbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_cookbook_url(@recipe_cookbook)
    assert_response :success
  end

  test "should update recipe_cookbook" do
    patch recipe_cookbook_url(@recipe_cookbook), params: { recipe_cookbook: { blurb: @recipe_cookbook.blurb, calories: @recipe_cookbook.calories, category: @recipe_cookbook.category, difficulty: @recipe_cookbook.difficulty, name: @recipe_cookbook.name, time: @recipe_cookbook.time } }
    assert_redirected_to recipe_cookbook_url(@recipe_cookbook)
  end

  test "should destroy recipe_cookbook" do
    assert_difference('RecipeCookbook.count', -1) do
      delete recipe_cookbook_url(@recipe_cookbook)
    end

    assert_redirected_to recipe_cookbooks_url
  end
end

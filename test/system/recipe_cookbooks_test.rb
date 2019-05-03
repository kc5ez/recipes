require "application_system_test_case"

class RecipeCookbooksTest < ApplicationSystemTestCase
  setup do
    @recipe_cookbook = recipe_cookbooks(:one)
  end

  test "visiting the index" do
    visit recipe_cookbooks_url
    assert_selector "h1", text: "Recipe Cookbooks"
  end

  test "creating a Recipe cookbook" do
    visit recipe_cookbooks_url
    click_on "New Recipe Cookbook"

    fill_in "Blurb", with: @recipe_cookbook.blurb
    fill_in "Calories", with: @recipe_cookbook.calories
    fill_in "Category", with: @recipe_cookbook.category
    fill_in "Difficulty", with: @recipe_cookbook.difficulty
    fill_in "Name", with: @recipe_cookbook.name
    fill_in "Time", with: @recipe_cookbook.time
    click_on "Create Recipe cookbook"

    assert_text "Recipe cookbook was successfully created"
    click_on "Back"
  end

  test "updating a Recipe cookbook" do
    visit recipe_cookbooks_url
    click_on "Edit", match: :first

    fill_in "Blurb", with: @recipe_cookbook.blurb
    fill_in "Calories", with: @recipe_cookbook.calories
    fill_in "Category", with: @recipe_cookbook.category
    fill_in "Difficulty", with: @recipe_cookbook.difficulty
    fill_in "Name", with: @recipe_cookbook.name
    fill_in "Time", with: @recipe_cookbook.time
    click_on "Update Recipe cookbook"

    assert_text "Recipe cookbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe cookbook" do
    visit recipe_cookbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe cookbook was successfully destroyed"
  end
end

json.extract! recipe_cookbook, :id, :calories, :blurb, :category, :time, :difficulty, :name, :created_at, :updated_at
json.url recipe_cookbook_url(recipe_cookbook, format: :json)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create([{name: 'chicken'}, {name: 'rice'}, {name: 'potato'}, {name: 'beef'}, {name: 'onion'}, {name: 'ginger'}, 
	{name: 'garlic'}, {name: 'tomato'}, {name: 'egg'}, {name: 'carrot'}, {name: 'chicken broth'}, {name: 'mushrooms'},
	{name: 'peas'}, {name: 'ground pork'}, {name: 'noodles'}, {name: 'soy sauce'}, {name: 'cooking wine'},
	{name: 'black bean sauce'}, {name: 'cucumber'}, {name: 'green onion'}
])
RecipeCookbook.create(name: 'Tomato and Eggs', calories: 150, time: '00:15:00', difficulty: 'Easy', category: 'Appetizer', blurb: 'Simple and easy to make for a quick, delicious meal')
RecipeCookbook.create(name: 'Chicken and Rice', calories: 500, time: '00:35:00', difficulty: 'Medium', category: 'Main', blurb: 'Instant pot classic, for a quick, easy and healthy dinner')
RecipeCookbook.create(name: 'Fried Sauce Noodles', calories: 550, time: '00:45:00', difficulty: 'Easy', category: 'Main', blurb: 'Not so healthy, but super tasty and a crowd pleaser')

RecipeIngredient.create(amount: '2', recipe_cookbook_id: 1, ingredient_id: 8)
RecipeIngredient.create(amount: '4', recipe_cookbook_id: 1, ingredient_id: 9)

RecipeIngredient.create(amount: '4 skin on thighs', recipe_cookbook_id: 2, ingredient_id: 1)
RecipeIngredient.create(amount: '2 cups', recipe_cookbook_id: 2, ingredient_id: 2)
RecipeIngredient.create(amount: '5 cloves', recipe_cookbook_id: 2, ingredient_id: 7)
RecipeIngredient.create(amount: '1 cup', recipe_cookbook_id: 2, ingredient_id: 11)
RecipeIngredient.create(amount: '1 cup', recipe_cookbook_id: 2, ingredient_id: 12)
RecipeIngredient.create(amount: '1 cup', recipe_cookbook_id: 2, ingredient_id: 13)
RecipeIngredient.create(amount: '2', recipe_cookbook_id: 2, ingredient_id: 10)
RecipeIngredient.create(amount: '1', recipe_cookbook_id: 2, ingredient_id: 5)

RecipeIngredient.create(amount: '1 lb', recipe_cookbook_id: 3, ingredient_id: 14)
RecipeIngredient.create(amount: '4 servings', recipe_cookbook_id: 3, ingredient_id: 15)
RecipeIngredient.create(amount: '5 cloves', recipe_cookbook_id: 3, ingredient_id: 7)
RecipeIngredient.create(amount: '1', recipe_cookbook_id: 3, ingredient_id: 5)
RecipeIngredient.create(amount: '2 inch', recipe_cookbook_id: 3, ingredient_id: 6)
RecipeIngredient.create(amount: '1', recipe_cookbook_id: 3, ingredient_id: 10)
RecipeIngredient.create(amount: '1', recipe_cookbook_id: 3, ingredient_id: 19)
RecipeIngredient.create(amount: '2 tbs', recipe_cookbook_id: 3, ingredient_id: 16)
RecipeIngredient.create(amount: '1 tbs', recipe_cookbook_id: 3, ingredient_id: 17)
RecipeIngredient.create(amount: '1/4 cup', recipe_cookbook_id: 3, ingredient_id: 18)

RecipeStep.create(instruction: 'Beat eggs and dice tomato', step: 1, recipe_cookbook_id: 1)
RecipeStep.create(instruction: 'Braise tomatoes until wilted ~5 minutes. Add 1/4 cup water and a pinch of salt to bring out juice', step: 2, recipe_cookbook_id: 1)
RecipeStep.create(instruction: 'In the meantime, scramble eggs with pinch of salt ', step: 3, recipe_cookbook_id: 1)
RecipeStep.create(instruction: 'Combine scrambled eggs with tomatoes until mixed together, then serve', step: 4, recipe_cookbook_id: 1)

RecipeStep.create(instruction: 'Season chicken thighs with salt and pepper', step: 1, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Fry thighs 5 mins each side in a hot pan with oil, set aside on a plate', step: 2, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Dice onions, garlic, carrots, and slice mushrooms', step: 3, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Turn Instant Pot on sautee, and sautee onions and garlic together 5 mins with pinch of salt', step: 4, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Rinse rice, and dump it in the pot with chicken broth and 1 cup water', step: 5, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Stir in mushrooms, carrots and peas. ', step: 6, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Place chicken thighs on top of everything', step: 7, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Lock and seal Instant Pot lid, and set to manual for 12 minutes', step: 8, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Natural release for 10 minutes, then manual release', step: 9, recipe_cookbook_id: 2)
RecipeStep.create(instruction: 'Shred chicken meat and serve', step: 10, recipe_cookbook_id: 2)

RecipeStep.create(instruction: 'Juliene cucumber and carrots, and dice onion, garlic, ginger and green onions', step: 1, recipe_cookbook_id: 3)
RecipeStep.create(instruction: 'Fry onion, garlic and ginger in pan until fragrant, and add ground pork', step: 2, recipe_cookbook_id: 3)
RecipeStep.create(instruction: 'Cook pork until cooked, then braise in soy sauce and cooking wine', step: 3, recipe_cookbook_id: 3)
RecipeStep.create(instruction: 'Boil noodles, and soak in cold water to stop cooking', step: 4, recipe_cookbook_id: 3)
RecipeStep.create(instruction: 'Combine ground pork, onion, garlic and ginger with black bean sauce', step: 5, recipe_cookbook_id: 3)
RecipeStep.create(instruction: 'Separate noodles into serving bowls and add ground pork/sauce mixture on top', step: 6, recipe_cookbook_id: 3)
RecipeStep.create(instruction: 'Garnish with juliened carrots, cucumber, green onions, and serve', step: 7, recipe_cookbook_id: 3)


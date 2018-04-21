require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # user actions that your app has
  def create
    # ask for a recipe name
    name = @view.ask_for('name')
    # ask for a recipe description
    description = @view.ask_for('description')
    # create an instance of `Recipe`
    recipe = Recipe.new(name, description)
    # sending the recipe to the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    index = @view.ask_for('index').to_i - 1
    @cookbook.remove_recipe(index)
  end

  def list
    recipes = @cookbook.all
    @view.display_recipes(recipes)
  end

end










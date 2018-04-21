class View

  # def ask_for_name
  #   puts 'name?'
  #   name = gets.chomp
  #   return name
  # end

  # def ask_for_description
  #   puts 'description?'
  #   description = gets.chomp
  #   return description
  # end

  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1 } - #{recipe.name} #{recipe.description}"
    end
  end

  def ask_for(something)
    puts "#{something}?"
    return gets.chomp
  end

end

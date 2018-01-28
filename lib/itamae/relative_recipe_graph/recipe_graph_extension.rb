require 'pathname'
require 'itamae/recipe_children'

module Itamae
  module RecipeGraphExtension
    def _dependency_in_dot
      result = ''
      pwd = Pathname(Dir.pwd)
      recipes(recursive: false).each do |recipe|
        recipe_relpath = Pathname(recipe.path).relative_path_from(pwd)
        recipe.children.recipes(recursive: false).each do |child_recipe|
          child_recipe_relpath = Pathname(child_recipe.path).relative_path_from(pwd)
          result << %(  "#{recipe_relpath}" -> "#{child_recipe_relpath}";\n)
        end
        result << recipe.children._dependency_in_dot
      end
      result
    end
  end
end

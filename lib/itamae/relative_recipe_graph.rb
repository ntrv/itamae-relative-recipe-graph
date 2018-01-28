require 'itamae/relative_recipe_graph/recipe_graph_extension'
require 'itamae/relative_recipe_graph/version'

Itamae::RecipeChildren.send(:prepend, Itamae::RecipeGraphExtension)

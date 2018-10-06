require("prototypes.category")

require("prototypes.items")
require("prototypes.entities")
require("prototypes.recipes")
require("prototypes.technologies")

require("lib.recipes")
require("lib.table")

counter = 1
for _, recipe in pairs(data.raw["recipe"]) do
  if recipe.category == "smelting" then
    counter = counter + 1
    log('Found smelting recipe: "' + recipe.name + '"')

    ingredients = get_ingredients(recipe, false)
    output = get_result(recipe, false)
    if output.result then
      output.name = "lf-" + recipe.name

      table.each(ingredients, function(v) v[2] = v[2] * math.ceil(2 / output.result_count) end)
      output.result_count = 2
      
      --log('adding lf-smelting recipe "' + output.name + '" with ingredients = ' + serpent.line(ingredients) + ' and result = ' + serpent.line(output))
      data:extend({add_smelting_recipe(output, {category = "lf-smelting", subgroup = "lf-smelting"}, ingredients, 2)})
    else
      log("recipe -" + recipe.anme + "- has more than one output. Recipe will be ignored")
    end
  end
end
log(counter + " total smelting recipes")

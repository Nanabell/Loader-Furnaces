require("prototypes.category")

require("prototypes.items")
require("prototypes.entities")
require("prototypes.recipes")
require("prototypes.technologies")

require("lib.recipes")
require("lib.math")
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

      -- Calculate the Least common multiple to properly scale output with ingredients
      multiplier = lcm(output.result_count, table.min(table.map(ingredients, function(v) return v[2] end)))
      if multiplier == 1 then multiplier = 2 end

      -- apply multiplier to output and ingredients
      output.result_count = output.result_count * multiplier
      table.each(ingredients, function(v) v[2] = v[2] * multiplier end)

      data:extend({add_smelting_recipe(output, {category = "lf-smelting", subgroup = "lf-smelting"}, ingredients, multiplier)})
    else
      log("recipe -" + recipe.anme + "- has more than one output. Recipe will be ignored")
    end
  end
end
log(counter + " total smelting recipes")

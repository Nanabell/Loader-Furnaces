require("prototypes.category")

require("prototypes.items")
require("prototypes.entities")
require("prototypes.recipes")
require("prototypes.technologies")

require("lib.recipes")
require("lib.math")
require("lib.table")

local counter = 1
for _, recipe in pairs(data.raw["recipe"]) do
  if recipe.category == "smelting" then
    counter = counter + 1
    log('Found smelting recipe: "' + recipe.name + '"')

    local ingredients = get_ingredients(recipe, false)
    local output = get_result(recipe, false)
    if output.result then
      output.name = "lf-" + recipe.name

      -- get the smallest ingredient count 
      local minIngred_count = table.min(table.map(ingredients, function(v) return v[2] end))

      -- Calculate the Least common multiple to properly scale output with ingredients
      local lcm = math.lcm(output.result_count, minIngred_count)
      local multiplier = lcm / math.maxOf(output.result_count, minIngred_count)

      -- double the multiplier if its 1 and the result_count is also 1
      if multiplier == 1 and output.result_count == 1 then multiplier = 2 end

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

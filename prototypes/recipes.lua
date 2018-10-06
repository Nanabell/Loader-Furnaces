require("lib.recipes")

-- Loader Furnaces
data:extend({
  add_furnace_recipe(
    "lf-furnace-01",
    {order = "a[loader-furnace]-a[01]", subgroup = "lf-furnace"},
    {
      {"loader", 2},
      {"steel-plate", 50},
      {"electric-furnace", 48},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 20},
      {"iron-stick", 20}
    }
  ),
  add_furnace_recipe(
    "lf-furnace-02",
    {order = "a[loader-furnace]-b[02]", subgroup = "lf-furnace"},
    {
      {"fast-loader", 2},
      {"steel-plate", 50},
      {"lf-furnace-01", 2},
      {"advanced-circuit", 5},
      {"iron-gear-wheel", 20},
      {"iron-stick", 20}
    }
  ),
  add_furnace_recipe(
    "lf-furnace-03",
    {category = "crafting-with-fluid", order = "a[loader-furnace]-c[03]", subgroup = "lf-furnace"},
    {
      {"express-loader", 2},
      {"steel-plate", 50},
      {"lf-furnace-02", 2},
      {"advanced-circuit", 50},
      {"iron-gear-wheel", 20},
      {"iron-stick", 20},
      {type = "fluid", name = "lubricant", amount = 120}
    }
  )
})

if data.raw.technology["bob-logistics-4"] then
  data:extend({
    add_furnace_recipe("lf-furnace-04", {category = "crafting-with-fluid", subgroup = "lf-furnace", order = "a[loader-furnace]-d[04]"},
    {
      {"purple-loader", 2},
      {"steel-plate", 50},
      {"lf-furnace-03", 2},
      {"processing-unit", 10},
      {"iron-gear-wheel", 20},
      {"iron-stick", 20},
      {type = "fluid", name = "lubricant", amount = 240}
    }),
    add_furnace_recipe("lf-furnace-05", {category = "crafting-with-fluid", subgroup = "lf-furnace", order = "a[loader-furnace]-e[05]"},
    {
      {"green-loader", 2},
      {"steel-plate", 50},
      {"lf-furnace-04", 2}, 
      {"processing-unit", 50},
      {"iron-gear-wheel", 20},
      {"iron-stick", 20},
      {type = "fluid", name = "lubricant", amount = 350}
    })
  })
end
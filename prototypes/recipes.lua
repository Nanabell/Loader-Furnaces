local yellowfurnace = {
    type = "recipe",
    name = "loader-furnace",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {"loader", 2},
        {"steel-plate", 50},
        {"electric-furnace", 48},
        {"electronic-circuit", 20}
    },
    result = "loader-furnace"
}
data:extend({yellowfurnace})

local redfurnace = {
    type = "recipe",
    name = "fast-loader-furnace",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {"fast-loader", 2},
        {"steel-plate", 50},
        {"loader-furnace", 3},
        {"advanced-circuit", 5}
    },
    result = "fast-loader-furnace"
}
data:extend({redfurnace})

local expressfurnace = {
    type = "recipe",
    name = "express-loader-furnace",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {"express-loader", 2},
        {"steel-plate", 50},
        {"fast-loader-furnace", 3},
        {"advanced-circuit", 50},
        {type="fluid", name="lubricant", amount=120}
    },
    result = "express-loader-furnace"
}
data:extend({expressfurnace})

 -- Addon for Green Loaders

 if data.raw.item["green-loader"] then
    local greenfurnace = {
        type = "recipe",
        name = "green-loader-furnace",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {"green-loader", 2},
            {"steel-plate", 50},
            {"express-loader-furnace", 3},
            {"processing-unit", 5}
        },
        result = "green-loader-furnace"
    }

 -- Addon for bobplates recipe

 if data.raw.item["titanium-bearing"] then
    table.insert(greenfurnace.ingredients, {"titanium-bearing", 10})
 end
 if data.raw.item["titanium-gear-wheel"] then
    table.insert(greenfurnace.ingredients, {"titanium-gear-wheel", 20})
  else
    table.insert(greenfurnace.ingredients, {"iron-gear-wheel", 20})
  end

  data:extend({greenfurnace})
end

 -- Addon for Purple Loaders

 if data.raw.item["purple-loader"] then
    local purplefurnace = {
        type = "recipe",
        name = "purple-loader-furnace",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {"purple-loader", 2},
            {"steel-plate", 50},
            {"green-loader-furnace", 3},
            {"processing-unit", 50}
        },
        result = "purple-loader-furnace"
    }

 -- Addon for bobplates recipe

 if data.raw.item["nitinol-bearing"] then
    table.insert(purplefurnace.ingredients, {"nitinol-bearing", 10})
  end
  if data.raw.item["nitinol-gear-wheel"] then
    table.insert(purplefurnace.ingredients, {"nitinol-gear-wheel", 20})
  else
    table.insert(purplefurnace.ingredients, {"iron-gear-wheel", 20})
  end

  data:extend({purplefurnace})
end
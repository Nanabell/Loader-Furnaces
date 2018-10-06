function add_furnace_tech(name, prerequisites, unit, order)
  return {
    type = "technology",
    name = name,
    icon = "__Loader-Furnaces__/graphics/technology/loader-furnace/" .. name .. ".png",
    icon_size = 100,
    effects = {{type = "unlock-recipe", recipe = name}},
    prerequisites = prerequisites,
    unit = unit,
    order = order
  }
end

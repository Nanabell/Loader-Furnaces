function add_furnace_item(name, category, order)
  return {
    type = "item",
    name = name,
    icon = "__Loader-Furnaces__/graphics/icon/loader-furnace/" .. name .. ".png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    order = order,
    subgroup = category,
    place_result = name,
    stack_size = 50
  }
end

function add_furnace_tech(name, prerequisites, unit, order)
    local tier = ""
    if name.tier == "01" then
        tier = "a"
    end
    if name.tier == "02" then
        tier = "b"
    end
    if name.tier == "03" then
        tier = "c"
    end
    if name.tier == "04" then
        tier = "d"
    end
    if name.tier == "05" then
        tier = "e"
    end

    return {
        type = "technology",
        name = name.name .. "-" .. tier,
        icon = "__Loader-Furnaces__/graphics/technology/loader-furnace/" .. name.name .. "-" .. name.tier .. ".png",
        icon_size = 100,
        effects = {{type = "unlock-recipe", recipe = name.name .. "-" .. name.tier}},
        prerequisites = prerequisites,
        unit = unit,
        order = order
    }
end

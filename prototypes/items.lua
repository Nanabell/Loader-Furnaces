function make_loader_furnace_item(name, order)
    return {
        type = "item",
        name = name,
        icon = "__Loader-Furnaces__/graphics/icon-"..name..".png",
        flags = {"goes-to-quickbar"},
        order = order,
        subgroup = "smelting-machine",
        place_result = name,
        stack_size = 50
    }
end

data:extend({
    make_loader_furnace_item("loader-furnace", "c[electric-furnace]-a[loader-furnace]"),
    make_loader_furnace_item("fast-loader-furnace", "c[electric-furnace]-a[fast-loader-furnace]"),
    make_loader_furnace_item("express-loader-furnace", "c[electric-furnace]-a[express-loader-furnace]")
})

 -- Addon for green & Purple Loader

if data.raw.item["green-loader"] then
    data:extend({
        make_loader_furnace_item("green-loader-furnace", "c[electric-furnace]-a[green-loader-furnace]")        
    })
end

if data.raw.item["purple-loader"] then
    data:extend({
        make_loader_furnace_item("purple-loader-furnace", "c[electric-furnace]-a[purple-loader-furnace]")        
    })
end
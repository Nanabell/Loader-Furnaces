data:extend({
    {
        type = "technology",
        name = "loader-furnace",
        icon = "__Loader-Furnaces__/graphics/loader-furnace-base.png",
        icon_size = 100,
        effects = {{
            type = "unlock-recipe",
            recipe = "loader-furnace"
        }},
        prerequisites = {"loader", "advanced-material-processing-2"},
        unit = {
            count = 500,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 30
        },
        order = "a-g-a"
    },

    {
        type = "technology",
        name = "fast-loader-furnace",
        icon = "__Loader-Furnaces__/graphics/fast-loader-furnace-base.png",
        icon_size = 100,
        effects = {{
            type = "unlock-recipe",
            recipe = "fast-loader-furnace"
        }},
        prerequisites = {"loader-furnace", "fast-loader"},
        unit = {
            count = 1000,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 30
        },
        order = "a-g-b"
    },

    {
        type = "technology",
        name = "express-loader-furnace",
        icon = "__Loader-Furnaces__/graphics/express-loader-furnace-base.png",
        icon_size = 100,
        effects = {{
            type = "unlock-recipe",
            recipe = "express-loader-furnace"
        }},
        prerequisites = {"fast-loader-furnace", "express-loader"},
        unit = {
            count = 2000,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"production-science-pack", 1}                
            },
            time = 60
        },
        order = "a-g-c"
    }
})

if data.raw.technology["green-loader"] then
    data:extend({{
        type = "technology",
        name = "green-loader-furnace",
        icon = "__Loader-Furnaces__/graphics/green-loader-furnace-base.png",
        icon_size = 100,
        effects = {{
            type = "unlock-recipe",
            recipe = "green-loader-furnace"
        }},
        prerequisites = {"express-loader-furnace", "green-loader"},
        unit = {
            count = 3000,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"production-science-pack", 1}                                
            },
            time = 60
        },
        order = "a-g-d"
    }})
end

if data.raw.technology["purple-loader"] then
    data:extend({{
        type = "technology",
        name = "purple-loader-furnace",
        icon = "__Loader-Furnaces__/graphics/purple-loader-furnace-base.png",
        icon_size = 100,
        effects = {{
            type = "unlock-recipe",
            recipe = "purple-loader-furnace"
        }},
        prerequisites = {"green-loader-furnace", "purple-loader"},
        unit = {
            count = 5000,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"production-science-pack", 1},                
                {"high-tech-science-pack", 1}
            },
            time = 120
        },
        order = "a-g-e"
    }})
end
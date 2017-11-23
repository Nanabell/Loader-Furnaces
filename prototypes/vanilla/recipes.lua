require("lib.recipes")

-- Loader Furnaces
data:extend(
    {
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
                {"lf-furnace-01", 3},
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
                {"lf-furnace-02", 3},
                {"advanced-circuit", 50},
                {"iron-gear-wheel", 20},
                {"iron-stick", 20},
                {type = "fluid", name = "lubricant", amount = 120}
            }
        )
    }
)

-- Smelting recipes
data:extend(
    {
        -- Stone Bricks
        add_smelting_recipe(
            {result = "stone-brick", amount = 2},
            {category = "lf-smelting", order = "a", subgroup = "lf-smelting"},
            {{name = "stone", amount = 2}},
            7
        ),
        -- Iron Plate
        add_smelting_recipe(
            {result = "iron-plate", amount = 2},
            {category = "lf-smelting", order = "b", subgroup = "lf-smelting"},
            {{name = "iron-ore", amount = 2}},
            7
        ),
        -- Copper Plate
        add_smelting_recipe(
            {result = "copper-plate", amount = 2},
            {category = "lf-smelting", order = "c", subgroup = "lf-smelting"},
            {{name = "copper-ore", amount = 2}},
            7
        ),
        -- Steel Plate
        add_smelting_recipe(
            {result = "steel-plate", amount = 2},
            {category = "lf-smelting", order = "d", subgroup = "lf-smelting"},
            {{name = "iron-plate", amount = 4}},
            7
        )
    }
)

require("lib.recipes")

if data.raw.item["lf-furnace-04"] then
    --Furnaces
    data:extend(
        {
            add_furnace_recipe(
                "lf-furnace-04",
                {order = "a[loader-furnace]-d[04]", subgroup = "lf-furnace"},
                {
                    {"green-loader", 2},
                    {"steel-plate", 50},
                    {"lf-furnace-03", 3},
                    {"processing-unit", 5},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20}
                }
            )
        }
    )

    if data.raw.item["lf-furnace-05"] then
        data:extend(
            {
                add_furnace_recipe(
                    "lf-furnace-05",
                    {order = "a[loader-furnace]-e[05]", subgroup = "lf-furnace"},
                    {
                        {"purple-loader", 2},
                        {"steel-plate", 50},
                        {"lf-furnace-04", 3},
                        {"processing-unit", 50},
                        {"iron-gear-wheel", 20},
                        {"iron-stick", 20}
                    }
                )
            }
        )
    end
end

if data.raw.item["lf-chemical-01"] then
    data:extend(
        {
            --Chemical
            add_furnace_recipe(
                "lf-chemical-01",
                {order = "a[loader-furnace]-a[01]", subgroup = "lf-chemical-furnace"},
                {
                    {"loader", 2},
                    {"steel-plate", 50},
                    {"chemical-furnace", 48},
                    {"electronic-circuit", 20},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20}
                }
            ),
            add_furnace_recipe(
                "lf-chemical-02",
                {order = "a[loader-furnace]-a[02]", subgroup = "lf-chemical-furnace"},
                {
                    {"fast-loader", 2},
                    {"steel-plate", 50},
                    {"lf-chemical-01", 3},
                    {"advanced-circuit", 5},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20}
                }
            ),
            add_furnace_recipe(
                "lf-chemical-03",
                {category = "crafting-with-fluid", order = "a[loader-furnace]-a[03]", subgroup = "lf-chemical-furnace"},
                {
                    {"express-loader", 2},
                    {"steel-plate", 50},
                    {"lf-chemical-02", 3},
                    {"advanced-circuit", 50},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20},
                    {type = "fluid", name = "lubricant", amount = 120}
                }
            ),
            --Mixing
            add_furnace_recipe(
                "lf-mixing-01",
                {order = "a[loader-furnace]-a[01]", subgroup = "lf-mixing-furnace"},
                {
                    {"loader", 2},
                    {"steel-plate", 50},
                    {"electric-mixing-furnace", 48},
                    {"electronic-circuit", 20},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20}
                }
            ),
            add_furnace_recipe(
                "lf-mixing-02",
                {order = "a[loader-furnace]-b[02]", subgroup = "lf-mixing-furnace"},
                {
                    {"fast-loader", 2},
                    {"steel-plate", 50},
                    {"lf-mixing-01", 3},
                    {"advanced-circuit", 5},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20}
                }
            ),
            add_furnace_recipe(
                "lf-mixing-03",
                {category = "crafting-with-fluid", order = "a[loader-furnace]-c[03]", subgroup = "lf-mixing-furnace"},
                {
                    {"express-loader", 2},
                    {"steel-plate", 50},
                    {"lf-mixing-02", 3},
                    {"advanced-circuit", 50},
                    {"iron-gear-wheel", 20},
                    {"iron-stick", 20},
                    {type = "fluid", name = "lubricant", amount = 120}
                }
            )
        }
    )

    if data.raw.item["lf-chemical-04"] then
        data:extend(
            {
                --Chemical
                add_furnace_recipe(
                    "lf-chemical-04",
                    {order = "a[loader-furnace]-d[04]", subgroup = "lf-chemical-furnace"},
                    {
                        {"green-loader", 2},
                        {"steel-plate", 50},
                        {"lf-chemical-03", 3},
                        {"processing-unit", 5},
                        {"iron-gear-wheel", 20},
                        {"iron-stick", 20}
                    }
                ),
                --Mixing
                add_furnace_recipe(
                    "lf-mixing-04",
                    {order = "a[loader-furnace]-d[04]", subgroup = "lf-mixing-furnace"},
                    {
                        {"purple-loader", 2},
                        {"steel-plate", 50},
                        {"lf-mixing-03", 3},
                        {"processing-unit", 5},
                        {"iron-gear-wheel", 20},
                        {"iron-stick", 20}
                    }
                )
            }
        )

        if data.raw.item["lf-chemical-05"] then
            data:extend(
                {
                    --Chemical
                    add_furnace_recipe(
                        "lf-chemical-05",
                        {order = "a[loader-furnace]-e[05]", subgroup = "lf-chemical-furnace"},
                        {
                            {"green-loader", 2},
                            {"steel-plate", 50},
                            {"lf-chemical-04", 3},
                            {"processing-unit", 50},
                            {"iron-gear-wheel", 20},
                            {"iron-stick", 20}
                        }
                    ),
                    --Mixing
                    add_furnace_recipe(
                        "lf-mixing-05",
                        {order = "a[loader-furnace]-e[05]", subgroup = "lf-mixing-furnace"},
                        {
                            {"purple-loader", 2},
                            {"steel-plate", 50},
                            {"lf-mixing-04", 3},
                            {"processing-unit", 50},
                            {"iron-gear-wheel", 20},
                            {"iron-stick", 20}
                        }
                    )
                }
            )
        end
    end

    data:extend(
        {
            --Normal Smelting
            --
            add_smelting_recipe(
                {result = "tin-plate", amount = 2},
                {category = "lf-smelting", order = "e", subgroup = "lf-smelting"},
                {{name = "tin-ore", amount = 2}},
                7
            ),
            add_smelting_recipe(
                {result = "silver-plate", amount = 2},
                {category = "lf-smelting", order = "f", subgroup = "lf-smelting"},
                {{name = "silver-ore", amount = 2}},
                7
            ),
            add_smelting_recipe(
                {result = "lead-plate", amount = 2},
                {category = "lf-smelting", order = "g", subgroup = "lf-smelting"},
                {{name = "lead-ore", amount = 2}},
                7
            ),
            add_smelting_recipe(
                {result = "glass", amount = 2},
                {category = "lf-smelting", order = "h", subgroup = "lf-smelting"},
                {{name = "quartz", amount = 2}},
                7
            ),
            add_smelting_recipe(
                {result = "rubber", amount = 2},
                {category = "lf-smelting", order = "i", subgroup = "lf-smelting"},
                {{name = "resin", amount = 2}},
                7
            ),
            --
            --Chemical Smelting
            --
            add_smelting_recipe(
                {result = "gold-plate", amount = 2},
                {category = "lf-chemical-smelting", order = "a", subgroup = "lf-chemical-smelting"},
                {{name = "gold-ore", amount = 2}, {type = "fluid", name = "chlorine", amount = 6}},
                7
            ),
            add_smelting_recipe(
                {name = "lead-plate-2", result = "lead-plate", amount = 2},
                {category = "lf-chemical-smelting", order = "b", subgroup = "lf-chemical-smelting"},
                {{name = "lead-oxide", amount = 4}, {name = "carbon", amount = 2}},
                7
            ),
            add_smelting_recipe(
                {result = "cobalt-plate", amount = 2},
                {category = "lf-chemical-smelting", order = "c", subgroup = "lf-chemical-smelting"},
                {{name = "cobalt-oxide", amount = 2}, {type = "fluid", name = "sulfuric-acid", amount = 20}},
                7
            ),
            add_smelting_recipe(
                {
                    name = "lf-cobalt-oxide-from-copper",
                    results = {{"copper-plate", 9}, {"cobalt-oxide", 2}},
                    main_product = "copper-plate",
                    icon = "__bobplates__/graphics/icons/copper-cobalt-oxide.png"
                },
                {
                    category = "lf-chemical-smelting",
                    order = "d",
                    subgroup = "lf-chemical-smelting"
                },
                {
                    {name = "copper-ore", amount = 7},
                    {name = "stone", amount = 1},
                    {name = "carbon", amount = 1},
                    {type = "fluid", name = "hydrogen", amount = 5}
                },
                31.5
            ),
            add_smelting_recipe(
                {result = "lithium-cobalt-oxide", amount = 2},
                {category = "lf-chemical-smelting", order = "e", subgroup = "lf-chemical-smelting"},
                {{"cobalt-oxide", 1}, {"lithium", 1}},
                7
            ),
            add_smelting_recipe(
                {
                    name = "lf-silver-from-lead",
                    results = {{"lead-plate", 9}, {"silver-ore", 2}},
                    main_product = "lead-plate",
                    icon = "__bobplates__/graphics/icons/lead-silver.png"
                },
                {
                    category = "lf-chemical-smelting",
                    order = "f",
                    subgroup = "lf-chemical-smelting"
                },
                {
                    {name = "lead-oxide", amount = 7},
                    {name = "carbon", amount = 3},
                    {name = "nickel-plate", amount = 1}
                },
                31.5
            ),
            add_smelting_recipe(
                {result = "alumina", amount = 2},
                {category = "lf-chemical-smelting", order = "g", subgroup = "lf-chemical-smelting"},
                {{name = "sodium-hydroxide", amount = 2}, {name = "bauxite-ore", amount = 2}},
                7
            ),
            add_smelting_recipe(
                {result = "carbon", amount = 2},
                {category = "lf-chemical-smelting", order = "h", subgroup = "lf-chemical-smelting"},
                {{name = "coal", amount = 1}, {type = "fluid", name = "water", amount = 5}},
                7
            ),
            add_smelting_recipe(
                {result = "cobalt-oxide", 2, amount = 2},
                {category = "lf-chemical-smelting", order = "i", subgroup = "lf-chemical-smelting"},
                {{name = "cobalt-ore", amount = 2}, {name = "stone", amount = 1}},
                7
            ),
            add_smelting_recipe(
                {result = "lithium-chloride", amount = 2},
                {category = "lf-chemical-smelting", order = "j", subgroup = "lf-chemical-smelting"},
                {{type = "fluid", name = "lithia-water", amount = 50}},
                7
            ),
            add_smelting_recipe(
                {result = "powdered-tungsten", amount = 2},
                {category = "lf-chemical-smelting", order = "k", subgroup = "lf-chemical-smelting"},
                {{name = "tungsten-oxide", amount = 2}, {type = "fluid", name = "hydrogen", amount = 30}},
                7
            ),
            add_smelting_recipe(
                {result = "salt", amount = 2},
                {category = "lf-chemical-smelting", order = "l", subgroup = "lf-chemical-smelting"},
                {{type = "fluid", name = "water", amount = 50}},
                7
            ),
            add_smelting_recipe(
                {result = "silicon-carbide", amount = 2},
                {category = "lf-chemical-smelting", order = "m", subgroup = "lf-chemical-smelting"},
                {{name = "silicon-powder", amount = 1}, {name = "carbon", amount = 1}},
                7
            ),
            add_smelting_recipe(
                {result = "silicon-nitride", amount = 2},
                {category = "lf-chemical-smelting", order = "n", subgroup = "lf-chemical-smelting"},
                {{name = "silicon-powder", amount = 2}, {type = "fluid", name = "nitrogen", amount = 25}},
                7
            ),
            add_smelting_recipe(
                {result = "tungsten-oxide", amount = 2},
                {category = "lf-chemical-smelting", order = "o", subgroup = "lf-chemical-smelting"},
                {{type = "fluid", name = "tungstic-acid", amount = 20}},
                7
            ),
            --
            --Mixing Smelting
            --
            add_smelting_recipe(
                {result = "tungsten-plate", amount = 5},
                {category = "lf-mixing-smelting", order = "a", subgroup = "lf-mixing-smelting"},
                {{name = "nickel-plate", amount = 1}, {name = "powdered-tungsten", amount = 4}},
                17.5
            ),
            add_smelting_recipe(
                {result = "bronze-alloy", amount = 5},
                {category = "lf-mixing-smelting", order = "b", subgroup = "lf-mixing-smelting"},
                {{name = "copper-plate", amount = 3}, {name = "tin-plate", amount = 2}},
                17.5
            ),
            add_smelting_recipe(
                {result = "brass-alloy", amount = 5},
                {category = "lf-mixing-smelting", order = "c", subgroup = "lf-mixing-smelting"},
                {{name = "copper-plate", amount = 3}, {name = "zinc-plate", amount = 2}},
                17.5
            ),
            add_smelting_recipe(
                {result = "electrum-alloy", amount = 5},
                {category = "lf-mixing-smelting", order = "d", subgroup = "lf-mixing-smelting"},
                {{name = "silver-plate", amount = 3}, {name = "gold-plate", amount = 2}},
                17.5
            ),
            add_smelting_recipe(
                {result = "copper-tungsten-alloy", amount = 5},
                {category = "lf-mixing-smelting", order = "e", subgroup = "lf-mixing-smelting"},
                {{name = "copper-plate", amount = 2}, {name = "powdered-tungsten", amount = 3}},
                17.5
            ),
            add_smelting_recipe(
                {name = "lf-tungsten-carbide-1", result = "tungsten-carbide", amount = 2},
                {category = "lf-mixing-smelting", order = "f", subgroup = "lf-mixing-smelting"},
                {{name = "carbon", amount = 1}, {name = "tungsten-oxide", amount = 1}},
                7
            ),
            add_smelting_recipe(
                {name = "lf-tungsten-carbide-2", result = "tungsten-carbide", amount = 2},
                {category = "lf-mixing-smelting", order = "g", subgroup = "lf-mixing-smelting"},
                {{name = "carbon", amount = 1}, {name = "powdered-tungsten", amount = 1}},
                7
            ),
            add_smelting_recipe(
                {result = "gunmetal-alloy", amount = 10},
                {category = "lf-mixing-smelting", order = "h", subgroup = "lf-mixing-smelting"},
                {
                    {name = "copper-plate", amount = 8},
                    {name = "tin-plate", amount = 8},
                    {name = "zinc-plate", amount = 1}
                },
                35
            ),
            add_smelting_recipe(
                {result = "invar-alloy", amount = 5},
                {category = "lf-mixing-smelting", order = "i", subgroup = "lf-mixing-smelting"},
                {{name = "nickel-plate", amount = 2}, {name = "iron-plate", amount = 3}},
                17.5
            ),
            add_smelting_recipe(
                {result = "nitinol-alloy", amount = 5},
                {category = "lf-mixing-smelting", order = "j", subgroup = "lf-mixing-smelting"},
                {{name = "nickel-plate", amount = 3}, {name = "titanium-plate", amount = 2}},
                17.5
            ),
            add_smelting_recipe(
                {result = "cobalt-steel-alloy", amount = 10},
                {category = "lf-mixing-smelting", order = "k", subgroup = "lf-mixing-smelting"},
                {{name = "iron-plate", amount = 14}, {name = "cobalt-plate", amount = 1}},
                35
            )
        }
    )
end

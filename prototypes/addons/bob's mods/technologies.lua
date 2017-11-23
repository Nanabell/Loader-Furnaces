require("lib.technologies")

if data.raw.recipe["lf-furnace-04"] then
    --Furnace
    data:extend(
        {
            add_furnace_tech(
                {name = "lf-furnace", tier = "04"},
                {"lf-furnace-c", "green-loader"},
                {
                    count = 3000,
                    time = 90,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1},
                        {"production-science-pack", 1}
                    }
                },
                "l[loader-furnace]-a[furnace]-d[04]"
            )
        }
    )

    if data.raw.recipe["lf-furnace-05"] then
        data:extend(
            {
                add_furnace_tech(
                    {name = "lf-furnace", tier = "05"},
                    {"lf-furnace-d", "purple-loader"},
                    {
                        count = 5000,
                        time = 120,
                        ingredients = {
                            {"science-pack-1", 1},
                            {"science-pack-2", 1},
                            {"science-pack-3", 1},
                            {"production-science-pack", 1},
                            {"high-tech-science-pack", 1}
                        }
                    },
                    "l[loader-furnace]-a[furnace]-e[05]"
                )
            }
        )
    end
end

if data.raw.item["lf-chemical-01"] then
    data:extend(
        {
            --Chemical
            add_furnace_tech(
                {name = "lf-chemical", tier = "01"},
                {"lf-furnace-a"},
                {
                    count = 250,
                    time = 30,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1}
                    }
                },
                "l[loader-furnace]-b[chemical]-a[01]"
            ),
            add_furnace_tech(
                {name = "lf-chemical", tier = "02"},
                {"lf-furnace-b", "lf-chemical-a"},
                {
                    count = 500,
                    time = 60,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1}
                    }
                },
                "l[loader-furnace]-b[chemical]-b[02]"
            ),
            add_furnace_tech(
                {name = "lf-chemical", tier = "03"},
                {"lf-furnace-c", "lf-chemical-b"},
                {
                    count = 1000,
                    time = 90,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1},
                        {"production-science-pack", 1}
                    }
                },
                "l[loader-furnace]-b[chemical]-c[01]"
            ),
            --Mixing
            add_furnace_tech(
                {name = "lf-mixing", tier = "01"},
                {"lf-furnace-a"},
                {
                    count = 250,
                    time = 30,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1}
                    }
                },
                "l[loader-furnace]-c[mixing]-a[01]"
            ),
            add_furnace_tech(
                {name = "lf-mixing", tier = "02"},
                {"lf-furnace-b", "lf-mixing-a"},
                {
                    count = 500,
                    time = 60,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1}
                    }
                },
                "l[loader-furnace]-c[mixing]-b[02]"
            ),
            add_furnace_tech(
                {name = "lf-mixing", tier = "03"},
                {"lf-furnace-c", "lf-mixing-b"},
                {
                    count = 1000,
                    time = 90,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1},
                        {"production-science-pack", 1}
                    }
                },
                "l[loader-furnace]-c[mixing]-c[01]"
            )
        }
    )

    if data.raw.recipe["lf-chemical-04"] then
        data:extend({
            --Chemical
            add_furnace_tech(
                {name = "lf-chemical", tier = "04"},
                {"lf-furnace-d", "lf-chemical-c"},
                {
                    count = 1500,
                    time = 90,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1},
                        {"production-science-pack", 1}
                    }
                },
                "l[loader-furnace]-b[chemical]-d[04]"
            ),
            --Mixing
            add_furnace_tech(
                {name = "lf-mixing", tier = "04"},
                {"lf-furnace-d", "lf-mixing-c"},
                {
                    count = 1500,
                    time = 90,
                    ingredients = {
                        {"science-pack-1", 1},
                        {"science-pack-2", 1},
                        {"science-pack-3", 1},
                        {"production-science-pack", 1}
                    }
                },
                "l[loader-furnace]-c[mixing]-d[04]"
            )
        })

        if data.raw.recipe["lf-chemical-05"] then
            data:extend(
                {
                    --Chemical
                    add_furnace_tech(
                        {name = "lf-chemical", tier = "05"},
                        {"lf-furnace-e", "lf-chemical-d"},
                        {
                            count = 2500,
                            time = 120,
                            ingredients = {
                                {"science-pack-1", 1},
                                {"science-pack-2", 1},
                                {"science-pack-3", 1},
                                {"production-science-pack", 1},
                                {"high-tech-science-pack", 1}
                            }
                        },
                        "l[loader-furnace]-b[chemical]-e[05]"
                    ),
                    --Mixing
                    add_furnace_tech(
                        {name = "lf-mixing", tier = "05"},
                        {"lf-furnace-e", "lf-mixing-d"},
                        {
                            count = 2500,
                            time = 120,
                            ingredients = {
                                {"science-pack-1", 1},
                                {"science-pack-2", 1},
                                {"science-pack-3", 1},
                                {"production-science-pack", 1},
                                {"high-tech-science-pack", 1}
                            }
                        },
                        "l[loader-furnace]-c[mixing]-e[05]"
                    )
                }
            )
        end
    end
end

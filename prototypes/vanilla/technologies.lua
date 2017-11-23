require("lib.technologies")

data:extend(
    {
        add_furnace_tech(
            {name = "lf-furnace", tier = "01"},
            {"loader", "advanced-material-processing-2"},
            {
                count = 500,
                time = 30,
                ingredients = {
                    {"science-pack-1", 1},
                    {"science-pack-2", 1}
                }
            },
            "l[loader-furnace]-a[furnace]-a[01]"
        ),
        add_furnace_tech(
            {name = "lf-furnace", tier = "02"},
            {"lf-furnace-a", "fast-loader"},
            {
                count = 1000,
                time = 60,
                ingredients = {
                    {"science-pack-1", 1},
                    {"science-pack-2", 1},
                    {"science-pack-3", 1}
                }
            },
            "l[loader-furnace]-a[furnace]-b[02]"
        ),
        add_furnace_tech(
            {name = "lf-furnace", tier = "03"},
            {"lf-furnace-b", "express-loader"},
            {
                count = 2000,
                time = 90,
                ingredients = {
                    {"science-pack-1", 1},
                    {"science-pack-2", 1},
                    {"science-pack-3", 1},
                    {"production-science-pack", 1}
                }
            },
            "l[loader-furnace]-a[furnace]-c[03]"
        )
    }
)

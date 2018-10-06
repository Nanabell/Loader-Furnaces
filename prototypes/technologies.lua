require("lib.technologies")

data:extend(
  {
    add_furnace_tech(
      "lf-furnace-01",
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
      "lf-furnace-02",
      {"lf-furnace-01", "fast-loader"},
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
      "lf-furnace-03",
      {"lf-furnace-02", "express-loader"},
      {
        count = 2000,
        time = 60,
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

if data.raw.technology["bob-logistics-4"] then
  data:extend(
    {
      add_furnace_tech(
        "lf-furnace-04",
        {"lf-furnace-03", "purple-loader"},
        {
          count = 2500,
          time = 60,
          ingredients = {
            {"science-pack-1", 2},
            {"science-pack-2", 2},
            {"science-pack-3", 1},
            {"production-science-pack", 1},
            {"high-tech-science-pack", 1}
          }
        },
        "l[loader-furnace]-a[furnace]-d[04]"
      ),
      add_furnace_tech(
        "lf-furnace-05",
        {"lf-furnace-04", "green-loader"},
        {
          count = 3000,
          time = 60,
          ingredients = {
            {"science-pack-1", 3},
            {"science-pack-2", 2},
            {"science-pack-3", 2},
            {"production-science-pack", 1},
            {"high-tech-science-pack", 1}
          }
        },
        "l[loader-furnace]-a[furnace]-e[05]"
      )
    }
  )
end

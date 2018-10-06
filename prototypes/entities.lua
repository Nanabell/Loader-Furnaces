require("lib.entities")

data:extend({
  add_furnace_entity("lf-furnace-01", data.raw["loader"]["loader"], 180 * 48),
  add_furnace_entity("lf-furnace-02", data.raw["loader"]["fast-loader"], 180 * 48 * 2),
  add_furnace_entity("lf-furnace-03", data.raw["loader"]["express-loader"], 180 * 48 * 4)   
})

if data.raw.technology["bob-logistics-4"] then
  data:extend({
    add_furnace_entity("lf-furnace-04", data.raw["loader"]["purple-loader"], 180 * 48 * 6),
    add_furnace_entity("lf-furnace-05", data.raw["loader"]["green-loader"], 180 * 48 * 8)
})
end
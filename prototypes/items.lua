require("lib.items")

data:extend({
  add_furnace_item("lf-furnace-01", "lf-furnace", "a[lf-furnace]-a[01]"),
  add_furnace_item("lf-furnace-02", "lf-furnace", "a[lf-furnace]-b[02]"),
  add_furnace_item("lf-furnace-03", "lf-furnace", "a[lf-furnace]-c[03]")    
})

if data.raw.technology["bob-logistics-4"] then
  data:extend({
    add_furnace_item("lf-furnace-04", "lf-furnace", "a[lf-furnace]-d[04]"),
    add_furnace_item("lf-furnace-05", "lf-furnace", "a[lf-furnace]-e[05]")
  })
end
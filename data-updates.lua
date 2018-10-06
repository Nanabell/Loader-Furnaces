counter = 1
for _, recipe in pairs(data.raw["recipe"]) do
  if recipe.category == "smelting" then
    counter = counter + 1
  end
end
log(counter + " total smelting recipes")

-- fix bobs stupid belt speed changes in data-updates
if settings.startup["bobmods-logistics-beltoverhaul"] and settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data.raw["assembling-machine"]["lf-furnace-01"].crafting_speed = (data.raw["transport-belt"]["transport-belt"].speed * 640) / 1.5
  data.raw["assembling-machine"]["lf-furnace-02"].crafting_speed = (data.raw["transport-belt"]["fast-transport-belt"].speed * 640) / 1.5
  data.raw["assembling-machine"]["lf-furnace-03"].crafting_speed = (data.raw["transport-belt"]["express-transport-belt"].speed * 640) / 1.5
  data.raw["assembling-machine"]["lf-furnace-04"].crafting_speed = (data.raw["transport-belt"]["turbo-transport-belt"].speed * 640) / 1.5
  data.raw["assembling-machine"]["lf-furnace-05"].crafting_speed = (data.raw["transport-belt"]["ultimate-transport-belt"].speed * 640) / 1.5
end

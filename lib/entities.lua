function add_furnace_entity(name, crafting_category, crafting_speed, energy_usage)
    return {
        type = "assembling-machine",
        name = name,
        icon = "__Loader-Furnaces__/graphics/icon/loader-furnace/" .. name .. ".png",
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 5, result = name},
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        light = {intensity = 1, size = 10},
        resistances = {
            {type = "fire", percent = 80},
            {type = "acid", percent = 80}
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        module_specification = {module_slots = 3, module_info_icon_shift = {0, 0.8}},
        allowed_effects = {"consumption", "pollution"},
        crafting_categories = crafting_category,
        fast_replaceable_group = "furnace",
        ingredient_count = 4,
        crafting_speed = crafting_speed,
        energy_usage = energy_usage .. "kW",
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {0, -2}}}
            },
            off_when_no_fluid_recipe = true
        },
        energy_source = {type = "electric", usage_priority = "secondary-input", emmisions = 0.005},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__base__/sound/electric-furnace.ogg", volume = 0.7},
            apparent_volume = 1.5
        },
        animation = {
            filename = "__Loader-Furnaces__/graphics/entity/loader-furnace/" .. name .. ".png",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0}
        },
        working_visualisations = {
            {
                animation = {
                    filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
                    priority = "high",
                    width = 25,
                    height = 15,
                    frame_count = 12,
                    animation_speed = 0.5,
                    shift = {0.015625, 0.890625}
                },
                light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
            },
            {
                animation = {
                    filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
                    priority = "high",
                    width = 19,
                    height = 13,
                    frame_count = 4,
                    animation_speed = 0.5,
                    shift = {-0.671875, -0.640625}
                }
            },
            {
                animation = {
                    filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
                    priority = "high",
                    width = 12,
                    height = 9,
                    frame_count = 4,
                    animation_speed = 0.5,
                    shift = {0.0625, -1.234375}
                }
            }
        }
    }
end

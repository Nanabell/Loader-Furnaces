data:extend({
    {
        type = "furnace",
        name = "loader-furnace",
        icon = "__Loader-Furnaces__/graphics/icon-loader-furnace.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 5, result = "loader-furnace"},
        max_health = 250,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        light = {intensity = 1, size = 10},
        resistances = {
            {
                type = "fire",
                percent = 80
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        module_specification =
        {
          module_slots = 2,
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 2,
        crafting_speed = 46 + .666,
        energy_usage = 180 * 48 .. "kW",
        source_inventory_size = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.005
        },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = {
                filename = "__base__/sound/electric-furnace.ogg",
                volume = 0.7
            },
            apparent_volume = 1.5
        },
        animation = {
          filename = "__Loader-Furnaces__/graphics/loader-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0}
        },
        working_visualisations = {
          {
            animation = {
              filename = "__Loader-Furnaces__/graphics/loader-furnace-heater.png",
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
              filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-1.png",
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
              filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-2.png",
              priority = "high",
              width = 12,
              height = 9,
              frame_count = 4,
              animation_speed = 0.5,
              shift = {0.0625, -1.234375}
            }
          }
        },
        fast_replaceable_group = "furnace"        
    },

    {
        type = "furnace",
        name = "fast-loader-furnace",
        icon = "__Loader-Furnaces__/graphics/icon-fast-loader-furnace.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 5, result = "fast-loader-furnace"},
        max_health = 250,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        light = {intensity = 1, size = 10},
        resistances = {
            {
                type = "fire",
                percent = 80
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        module_specification =
        {
          module_slots = 3,
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 2,
        crafting_speed = 93 + .333,
        energy_usage = 180 * 48 * 2 .. "kW",
        source_inventory_size = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.005
        },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = {
                filename = "__base__/sound/electric-furnace.ogg",
                volume = 0.7
            },
            apparent_volume = 1.5
        },
        animation = {
          filename = "__Loader-Furnaces__/graphics/fast-loader-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0}
        },
        working_visualisations = {
          {
            animation = {
              filename = "__Loader-Furnaces__/graphics/loader-furnace-heater.png",
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
              filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-1.png",
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
              filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-2.png",
              priority = "high",
              width = 12,
              height = 9,
              frame_count = 4,
              animation_speed = 0.5,
              shift = {0.0625, -1.234375}
            }
          }
        },
        fast_replaceable_group = "furnace"        
    },

    {
        type = "furnace",
        name = "express-loader-furnace",
        icon = "__Loader-Furnaces__/graphics/icon-express-loader-furnace.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 5, result = "express-loader-furnace"},
        max_health = 250,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        light = {intensity = 1, size = 10},
        resistances = {
            {
                type = "fire",
                percent = 80
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        module_specification =
        {
          module_slots = 4,
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 2,
        crafting_speed = 140,
        energy_usage = 180 * 48 * 4 .. "kW",
        source_inventory_size = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.005
        },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = {
                filename = "__base__/sound/electric-furnace.ogg",
                volume = 0.7
            },
            apparent_volume = 1.5
        },
        animation = {
          filename = "__Loader-Furnaces__/graphics/express-loader-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0}
        },
        working_visualisations = {
          {
            animation = {
              filename = "__Loader-Furnaces__/graphics/loader-furnace-heater.png",
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
              filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-1.png",
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
              filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-2.png",
              priority = "high",
              width = 12,
              height = 9,
              frame_count = 4,
              animation_speed = 0.5,
              shift = {0.0625, -1.234375}
            }
          }
        },
        fast_replaceable_group = "furnace"        
    }
})

 -- Addon for Green Loader
 
 if data.raw.item["green-loader"] then
    data:extend({
        {
            type = "furnace",
            name = "green-loader-furnace",
            icon = "__Loader-Furnaces__/graphics/icon-green-loader-furnace.png",
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {mining_time = 5, result = "green-loader-furnace"},
            max_health = 250,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            light = {intensity = 1, size = 10},
            resistances = {
                {
                    type = "fire",
                    percent = 80
                }
            },
            collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            module_specification =
            {
              module_slots = 5,
              module_info_icon_shift = {0, 0.8}
            },
            allowed_effects = {"consumption", "speed", "productivity", "pollution"},
            crafting_categories = {"smelting"},
            result_inventory_size = 2,
            crafting_speed = 186 + .666,
            energy_usage = 180 * 48 * 8 .. "kW",
            source_inventory_size = 1,
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                emissions = 0.005
            },
            vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
            working_sound = {
                sound = {
                    filename = "__base__/sound/electric-furnace.ogg",
                    volume = 0.7
                },
                apparent_volume = 1.5
            },
            animation = {
              filename = "__Loader-Furnaces__/graphics/green-loader-furnace-base.png",
              priority = "high",
              width = 129,
              height = 100,
              frame_count = 1,
              shift = {0.421875, 0}
            },
            working_visualisations = {
              {
                animation = {
                  filename = "__Loader-Furnaces__/graphics/loader-furnace-heater.png",
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
                  filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-1.png",
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
                  filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-2.png",
                  priority = "high",
                  width = 12,
                  height = 9,
                  frame_count = 4,
                  animation_speed = 0.5,
                  shift = {0.0625, -1.234375}
                }
              }
            },
            fast_replaceable_group = "furnace"        
        }
    })
end

 -- Addon for Purple Loader
 if data.raw.item["purple-loader"] then
    data:extend({
        {
            type = "furnace",
            name = "purple-loader-furnace",
            icon = "__Loader-Furnaces__/graphics/icon-purple-loader-furnace.png",
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {mining_time = 5, result = "purple-loader-furnace"},
            max_health = 250,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            light = {intensity = 1, size = 10},
            resistances = {
                {
                    type = "fire",
                    percent = 80
                }
            },
            collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            module_specification =
            {
              module_slots = 6,
              module_info_icon_shift = {0, 0.8}
            },
            allowed_effects = {"consumption", "speed", "productivity", "pollution"},
            crafting_categories = {"smelting"},
            result_inventory_size = 2,
            crafting_speed = 233.444,
            energy_usage = 180 * 48 * 16 .. "kW",
            source_inventory_size = 1,
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                emissions = 0.005
            },
            vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
            working_sound = {
                sound = {
                    filename = "__base__/sound/electric-furnace.ogg",
                    volume = 0.7
                },
                apparent_volume = 1.5
            },
            animation = {
              filename = "__Loader-Furnaces__/graphics/purple-loader-furnace-base.png",
              priority = "high",
              width = 129,
              height = 100,
              frame_count = 1,
              shift = {0.421875, 0}
            },
            working_visualisations = {
              {
                animation = {
                  filename = "__Loader-Furnaces__/graphics/loader-furnace-heater.png",
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
                  filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-1.png",
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
                  filename = "__Loader-Furnaces__/graphics/loader-furnace-propeller-2.png",
                  priority = "high",
                  width = 12,
                  height = 9,
                  frame_count = 4,
                  animation_speed = 0.5,
                  shift = {0.0625, -1.234375}
                }
              }
            },
            fast_replaceable_group = "furnace"        
        }
    })
end
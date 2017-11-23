require("lib.entities")

if data.raw.item["lf-furnace-04"] then
    data:extend({add_furnace_entity("lf-furnace-04", {"lf-smelting"}, 53.333 * 3.5, 180 * 48 * 8)})

    if data.raw.item["lf-furnace-05"] then
        data:extend({add_furnace_entity("lf-furnace-05", {"lf-smelting"}, 66.666 * 3.5, 180 * 48 * 16)})
    end
end

if data.raw.item["lf-chemical-01"] then
    data:extend(
        {
            --Chemical
            add_furnace_entity("lf-chemical-01", {"lf-chemical-smelting"}, 13.333 * 3.5, 180 * 48),
            add_furnace_entity("lf-chemical-02", {"lf-chemical-smelting"}, 13.333 * 3.5, 180 * 48 * 2),
            add_furnace_entity("lf-chemical-03", {"lf-chemical-smelting"}, 13.333 * 3.5, 180 * 48 * 4),
            --Mixing
            add_furnace_entity("lf-mixing-01", {"lf-mixing-smelting"}, 13.333 * 3.5, 180 * 48),
            add_furnace_entity("lf-mixing-02", {"lf-mixing-smelting"}, 13.333 * 3.5, 180 * 48 * 2),
            add_furnace_entity("lf-mixing-03", {"lf-mixing-smelting"}, 13.333 * 3.5, 180 * 48 * 4)
        }
    )

    if data.raw.item["lf-chemical-04"] then
        data:extend(
            {
                --Chemical
                add_furnace_entity("lf-chemical-04", {"lf-chemical-smelting"}, 53.333 * 3.5, 180 * 48 * 8),
                --Mixing
                add_furnace_entity("lf-mixing-04", {"lf-mixing-smelting"}, 53.333 * 3.5, 180 * 48 * 8)
            }
        )

        if data.raw.item["lf-chemical-05"] then
            data:extend(
                {
                    --Chemical
                    add_furnace_entity("lf-chemical-05", {"lf-chemical-smelting"}, 66.666 * 3.5, 180 * 48 * 16),
                    --Mixing
                    add_furnace_entity("lf-mixing-05", {"lf-mixing-smelting"}, 66.666 * 3.5, 180 * 48 * 16)
                }
            )
        end
    end
end
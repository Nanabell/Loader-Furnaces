require("lib.items")

--Furnaces
if data.raw.item["green-transport-belt"] then
    data:extend({add_furnace_item("lf-furnace-04", "lf-furnace", "a[lf-furnace]-d[04]")})

    if data.raw.item["purple-transport-belt"] then
        data:extend({add_furnace_item("lf-furnace-05", "lf-furnace", "a[lf-furnace]-e[05]")})
    end
end

if data.raw.item["chemical-furnace"] then
    data:extend(
        {
            --Chemical
            add_furnace_item("lf-chemical-01", "lf-chemical-furnace", "a[lf-chemical]-a[01]"),
            add_furnace_item("lf-chemical-02", "lf-chemical-furnace", "a[lf-chemical]-b[02]"),
            add_furnace_item("lf-chemical-03", "lf-chemical-furnace", "a[lf-chemical]-c[03]"),
            --Mixing
            add_furnace_item("lf-mixing-01", "lf-mixing-furnace", "a[lf-mixing]-a[01]"),
            add_furnace_item("lf-mixing-02", "lf-mixing-furnace", "a[lf-mixing]-b[02]"),
            add_furnace_item("lf-mixing-03", "lf-mixing-furnace", "a[lf-mixing]-c[03]")
        }
    )

    if data.raw.item["green-transport-belt"] then
        data:extend(
            {
                --Chemical
                add_furnace_item("lf-chemical-04", "lf-chemical-furnace", "a[lf-chemical]-d[04]"),
                --Mixing
                add_furnace_item("lf-mixing-04", "lf-mixing-furnace", "a[lf-mixing]-d[04]")
            }
        )

        if data.raw.item["purple-transport-belt"] then
            data:extend(
                {
                    --Chemical
                    add_furnace_item("lf-chemical-05", "lf-chemical-furnace", "a[lf-chemical]-e[05]"),
                    --Mixing
                    add_furnace_item("lf-mixing-05", "lf-mixing-furnace", "a[lf-mixing]-e[05]")
                }
            )
        end
    end
end

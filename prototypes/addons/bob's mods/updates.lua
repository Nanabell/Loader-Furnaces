-- recipe
if data.raw.item["steel-bearing"] and data.raw.item["steel-gear-wheel"] then
    --Furnace
    bobmods.lib.recipe.replace_ingredient("lf-furnace-02", "iron-stick", "steel-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-furnace-02", "iron-gear-wheel", "steel-gear-wheel")
    --Chemical
    bobmods.lib.recipe.replace_ingredient("lf-chemical-02", "iron-stick", "steel-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-chemical-02", "iron-gear-wheel", "steel-gear-wheel")
    --Mixing
    bobmods.lib.recipe.replace_ingredient("lf-mixing-02", "iron-stick", "steel-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-mixing-02", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["ceramic-bearing"] and data.raw.item["brass-gear-wheel"] then
    --Furnace
    bobmods.lib.recipe.replace_ingredient("lf-furnace-03", "iron-stick", "ceramic-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-furnace-03", "iron-gear-wheel", "brass-gear-wheel")
    --Chemical
    bobmods.lib.recipe.replace_ingredient("lf-chemical-03", "iron-stick", "ceramic-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-chemical-03", "iron-gear-wheel", "brass-gear-wheel")
    --Mixing
    bobmods.lib.recipe.replace_ingredient("lf-mixing-03", "iron-stick", "ceramic-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-mixing-03", "iron-gear-wheel", "brass-gear-wheel")
end

if data.raw.item["titanium-bearing"] and data.raw.item["titanium-gear-wheel"] then
    --Furnace
    bobmods.lib.recipe.replace_ingredient("lf-furnace-04", "iron-stick", "titanium-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-furnace-04", "iron-gear-wheel", "titanium-gear-wheel")
    --Chemical
    bobmods.lib.recipe.replace_ingredient("lf-chemical-04", "iron-stick", "titanium-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-chemical-04", "iron-gear-wheel", "titanium-gear-wheel")
    --Mixing
    bobmods.lib.recipe.replace_ingredient("lf-mixing-04", "iron-stick", "titanium-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-mixing-04", "iron-gear-wheel", "titanium-gear-wheel")
end

if data.raw.item["nitinol-bearing"] and data.raw.item["nitinol-gear-wheel"] then
    --Furnace
    bobmods.lib.recipe.replace_ingredient("lf-furnace-05", "iron-stick", "nitinol-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-furnace-05", "iron-gear-wheel", "nitinol-gear-wheel")
    --Chemical
    bobmods.lib.recipe.replace_ingredient("lf-chemical-05", "iron-stick", "nitinol-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-chemical-05", "iron-gear-wheel", "nitinol-gear-wheel")
    --Mixing
    bobmods.lib.recipe.replace_ingredient("lf-mixing-05", "iron-stick", "nitinol-bearing")
    bobmods.lib.recipe.replace_ingredient("lf-mixing-05", "iron-gear-wheel", "nitinol-gear-wheel")
end

-- technology
if data.raw.tool["logistic-science-pack"] then
    --Furnace
    bobmods.lib.tech.add_new_science_pack("lf-furnace-04", "logistic-science-pack", 1)
    bobmods.lib.tech.add_new_science_pack("lf-furnace-05", "logistic-science-pack", 1)
    --Chemical
    bobmods.lib.tech.add_new_science_pack("lf-chemical-04", "logistic-science-pack", 1)
    bobmods.lib.tech.add_new_science_pack("lf-chemical-05", "logistic-science-pack", 1)
    --Mixing
    bobmods.lib.tech.add_new_science_pack("lf-mixing-04", "logistic-science-pack", 1)
    bobmods.lib.tech.add_new_science_pack("lf-mixing-05", "logistic-science-pack", 1)
end

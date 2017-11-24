function add_furnace_recipe(result, sorting, ingredients)
    return {
        type = "recipe",
        name = result,
        ingredients = ingredients,
        enabled = false,
        category = sorting.category,
        subgroup = sorting.subgroup,
        order = sorting.order,
        energy_required = 5,
        result = result
    }
end

function add_smelting_recipe(result, sorting, ingredients, energy_required)
    if not result.name then
        result.name = "lf-" .. result.result
    end

    return {
        type = "recipe",
        name = result.name,
        ingredients = ingredients,
        enabled = true,
        category = sorting.category,
        subgroup = sorting.subgroup,
        order = sorting.order,
        energy_required = energy_required,
        result = result.result,
        result_count = result.amount,
        results = result.results,
        main_product = result.main_product,
        icon = result.icon
    }
end

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
    result_count = result.result_count,
    results = result.results,
    main_product = result.main_product,
    icon = result.icon,
    icon_size = 32
  }
end

function get_ingredients(recipe, get_expensive)
  ingredients = {}
  if not get_expensive then
    if recipe.normal then
      ingredients = table.deepcopy(recipe.normal.ingredients)
    else
      ingredients = table.deepcopy(recipe.ingredients)
    end
  else
    ingredients = table.deepcopy(recipe.expensive.ingredients)
  end

  return ingredients
end

function get_result(recipe, get_expensive)
  result = {}
  if not get_expensive then
    if recipe.normal then
      result.result = recipe.normal.result
      result.result_count = recipe.normal.result_count
    else
      result.result = recipe.result
      result.result_count = recipe.result_count
    end
  else
    result.result = recipe.expensive.result
    result.result_count = recipe.expensive.result_count
  end

  if not result.result_count then
    result.result_count = 1
  end

  return result
end

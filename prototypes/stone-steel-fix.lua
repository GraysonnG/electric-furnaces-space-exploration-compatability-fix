local function find_furnace(name)
  if data.raw.furnace[name] then return data.raw.furnace[name] end
  if data.raw["assembling-machine"][name] then return data.raw["assembling-machine"][name] end
  if data.raw[name] then return data.raw[name] end
end

local furnaces = {
  stone_furnace = find_furnace("electric-stone-furnace"),
  steel_furnace = find_furnace("electric-steel-furnace"),
  elect_furnace_2 = find_furnace("electric-furnace-2"),
  elect_furnace_3 = find_furnace("electric-furnace-3")
}

for _,value in pairs(furnaces) do 
  table.insert(value.crafting_categories, "kiln")
end
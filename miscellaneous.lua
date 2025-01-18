-- cropocalypse/miscellaneous.lua

-- This Is Where The Extras Go

local path = minetest.get_modpath("cropocalypse")

-- Adds Cropocalypse Items As Dungeon Loot

if minetest.global_exists("dungeon_loot") then
	dungeon_loot.register({
		{name = "cropocalypse:carrot_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:potato_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:beet_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:soybean_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:garlic_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:flax_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:pumpkin_plant_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:watermelon_plant_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:corn_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:cocao_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:morel_mushroom_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:oyster_mushroom_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:shiitake_mushroom_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:button_mushroom_seed", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:saucer_mushroom", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:puffed_mushroom", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:veiled_mushroom", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:slimy_mushroom", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:king_mushroom", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:melting_mushroom", chance = 0.3, count = {1, 4}},
		{name = "cropocalypse:magic_mushroom", chance = 0.3, count = {1, 4}}
	})
end

-- If The Bonemeal Mod Is Installed This Adds The Crop Seeds To Be Bonemealed

if minetest.get_modpath("bonemeal") then
	bonemeal:add_crop({
	{"cropocalypse:carrot_", 8, "cropocalypse:seed_carrot"},
	{"cropocalypse:potato_", 8, "cropocalypse:seed_potato"},
	{"cropocalypse:beet_", 8, "cropocalypse:seed_beet"},
	{"cropocalypse:soybean_", 8, "cropocalypse:seed_soybean"},
	{"cropocalypse:garlic_", 8, "cropocalypse:seed_garlic"},
	{"cropocalypse:flax_", 8, "cropocalypse:seed_flax"},
	{"cropocalypse:pumpkin_plant_", 8, "cropocalypse:seed_pumpkin_plant"},
	{"cropocalypse:watermelon_plant_", 8, "cropocalypse:seed_watermelon_plant"},
	{"cropocalypse:corn_", 8, "cropocalypse:seed_corn"},
	{"cropocalypse:cocao_", 8, "cropocalypse:seed_cocao"},
	{"cropocalypse:morel_mushroom_", 8, "cropocalypse:seed_morel_mushroom"},
	{"cropocalypse:oyster_mushroom_", 8, "cropocalypse:seed_oyster_mushroom"},
	{"cropocalypse:shiitake_mushroom_", 8, "cropocalypse:seed_shiitake_mushroom"},
	{"cropocalypse:button_mushroom_", 8, "cropocalypse:seed_button_mushroom"}
	})
end

if minetest.get_modpath("bonemeal") then
-- Tiny Pumpkin To Mulch
minetest.register_craft({
	type = "shapeless",
	output = "bonemeal:mulch",
	recipe = {"cropocalypse:pumpkin_plant"}
})
-- Tiny Watermelon To Mulch
minetest.register_craft({
	type = "shapeless",
	output = "bonemeal:mulch",
	recipe = {"cropocalypse:watermelon_plant"}
})
end

-- If The Grave Mod Is Installed This Adds Flora To The Biome

if minetest.global_exists("grave") then
	dofile(path .. "/grave_plants.lua")
end
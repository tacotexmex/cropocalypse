-- cropocalypse/plants.lua

-- Registers crops and fungi along with their initial drop

-- Register Wild Carrot Node

minetest.register_node("cropocalypse:carrot_wild", {
	description = ("Wild Carrot"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"cropocalypse_carrot_wild.png"},
	inventory_image = "cropocalypse_carrot_wild.png",
	wield_image = "cropocalypse_carrot_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_carrot",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Carrot Decoration

minetest.register_decoration({
	name = "cropocalypse:carrot_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 2703,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:carrot_wild",
})

-- Carrot Plant Farming

farming.register_plant("cropocalypse:carrot", {
	description = ("Carrot Seed"),
	harvest_description = ("Carrot Root"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_carrot_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_carrot = 1, flammable = 4},
	place_param2 = 3,
})

-- Carrot Item Data

minetest.register_craftitem("cropocalypse:carrot", {
	description = ("Carrot"),
	inventory_image = "cropocalypse_carrot.png",
	wield_image = "cropocalypse_carrot.png",
	paramtype = "meshoptions",
	groups = {food_carrot = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Potato Node

minetest.register_node("cropocalypse:potato_wild", {
	description = ("Wild Potato"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"cropocalypse_potato_wild.png"},
	inventory_image = "cropocalypse_potato_wild.png",
	wield_image = "cropocalypse_potato_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_potato",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Potato Decoration

minetest.register_decoration({
	name = "cropocalypse:potato_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 8643,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:potato_wild",
})

-- Sweet Potato Plant Farming

farming.register_plant("cropocalypse:potato", {
	description = ("Potato Seed"),
	harvest_description = ("Sweet Potato"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_potato_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_potato = 1, flammable = 4},
	place_param2 = 3,
})

-- Sweet Potato Item Data

minetest.register_craftitem("cropocalypse:potato", {
	description = ("Sweet Potato"),
	inventory_image = "cropocalypse_potato.png",
	wield_image = "cropocalypse_potato.png",
	paramtype = "meshoptions",
	groups = {food_potato = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Beet Node

minetest.register_node("cropocalypse:beet_wild", {
	description = ("Wild Beet"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"cropocalypse_beet_wild.png"},
	inventory_image = "cropocalypse_beet_wild.png",
	wield_image = "cropocalypse_beet_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_beet",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Beet Decoration

minetest.register_decoration({
	name = "cropocalypse:beet_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 9977,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:beet_wild",
})

-- Sugar Beet Plant Farming

farming.register_plant("cropocalypse:beet", {
	description = ("Beet Seed"),
	harvest_description = ("Sugar Beet"),
	inventory_image = "cropocalypse_beet_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_beet = 1, flammable = 4},
})

-- Sugar Beet Item Data

minetest.register_craftitem("cropocalypse:beet", {
	description = ("Sugar Beet"),
	inventory_image = "cropocalypse_beet.png",
	wield_image = "cropocalypse_beet.png",
	paramtype = "meshoptions",
	groups = {food_beet = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Soybean Node

minetest.register_node("cropocalypse:soybean_wild", {
	description = ("Wild Soybean"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"cropocalypse_soybean_wild.png"},
	inventory_image = "cropocalypse_soybean_wild.png",
	wield_image = "cropocalypse_soybean_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_soybean",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Soybean Decoration

minetest.register_decoration({
	name = "cropocalypse:soybean_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 1071,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:soybean_wild",
})

-- Soybean Plant Farming

farming.register_plant("cropocalypse:soybean", {
	description = ("Soybean Seed"),
	harvest_description = ("Soybean"),
	inventory_image = "cropocalypse_soybean_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_soybean = 1, flammable = 4},
})

-- Soybean Item Data

minetest.register_craftitem("cropocalypse:soybean", {
	description = ("Soybean"),
	inventory_image = "cropocalypse_soybean.png",
	wield_image = "cropocalypse_soybean.png",
	paramtype = "meshoptions",
	groups = {food_soybean = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Garlic Node

minetest.register_node("cropocalypse:garlic_wild", {
	description = ("Wild Garlic"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"cropocalypse_garlic_wild.png"},
	inventory_image = "cropocalypse_garlic_wild.png",
	wield_image = "cropocalypse_garlic_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_garlic",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Garlic Decoration

minetest.register_decoration({
	name = "cropocalypse:garlic_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 9277,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:garlic_wild",
})

-- Garlic Plant Farming

farming.register_plant("cropocalypse:garlic", {
	description = ("Garlic Seed"),
	harvest_description = ("Garlic"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_garlic_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_garlic = 1, flammable = 4},
	place_param2 = 3,
})

-- Garlic Item Data

minetest.register_craftitem("cropocalypse:garlic", {
	description = ("Garlic"),
	inventory_image = "cropocalypse_garlic.png",
	wield_image = "cropocalypse_garlic.png",
	paramtype = "meshoptions",
	groups = {food_garlic = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Flax Node

minetest.register_node("cropocalypse:flax_wild", {
	description = ("Wild Flax"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"cropocalypse_flax_wild.png"},
	inventory_image = "cropocalypse_flax_wild.png",
	wield_image = "cropocalypse_flax_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_flax",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Flax Decoration

minetest.register_decoration({
	name = "cropocalypse:flax_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.2,
		spread = {x = 50, y = 50, z = 50},
		seed = 7408,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:flax_wild",
})

-- Flax Plant Farming

farming.register_plant("cropocalypse:flax", {
	description = ("Flax Seed"),
	harvest_description = ("Flax"),
	inventory_image = "cropocalypse_flax_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {crop_flax = 1, flammable = 4},
	place_param2 = 3,
})

-- Flax Item Data

minetest.register_craftitem("cropocalypse:flax", {
	description = ("Flax"),
	inventory_image = "cropocalypse_flax.png",
	wield_image = "cropocalypse_flax.png",
	paramtype = "meshoptions",
	groups = {crop_flax = 1, flammable = 4},
})

-- Register Pumpkin Node
minetest.register_node("cropocalypse:pumpkin", {
	description = "Pumpkin",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	tiles = {
		"cropocalypse_pumpkin_top.png",
		"cropocalypse_pumpkin_bottom.png",
		"cropocalypse_pumpkin.png",
		"cropocalypse_pumpkin.png",
		"cropocalypse_pumpkin.png",
		"cropocalypse_pumpkin.png"
	},
	groups = {pumpkin = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:pumpkin",
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Register Wild Pumpkin Node
minetest.register_node("cropocalypse:pumpkin_wild", {
	description = "Pumpkin",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	tiles = {
		"cropocalypse_pumpkin_top.png",
		"cropocalypse_pumpkin_bottom.png",
		"cropocalypse_pumpkin.png",
		"cropocalypse_pumpkin.png",
		"cropocalypse_pumpkin.png",
		"cropocalypse_pumpkin.png"
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1, not_in_creative_inventory = 1},
	drop = "cropocalypse:pumpkin",
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Register Pumpkin Decoration

minetest.register_decoration({
	name = "cropocalypse:pumpkin_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 6588,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:pumpkin_wild",
})

-- Pumpkin Plant Farming

farming.register_plant("cropocalypse:pumpkin_plant", {
	description = ("Pumpkin Seed"),
	harvest_description = ("Tiny Pumpkin"),
	inventory_image = "cropocalypse_pumpkin_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {crop_pumpkin = 1, flammable = 4},
	place_param2 = 3,
})

-- This Spawns A Pumpkin North Of A fully Grown Plant (Z+)
function default.cropocalypse_pumpkin_spawn_north(pos, node)
	while node.name == "cropocalypse:pumpkin_plant_8" do
		pos.z = pos.z + 1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:pumpkin"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Pumpkin Spawn North Of Plant",
	nodenames = {"cropocalypse:pumpkin_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_pumpkin_spawn_north(...)
	end
})

-- This Spawns A Pumpkin South Of A fully Grown Plant (Z+)
function default.cropocalypse_pumpkin_spawn_south(pos, node)
	while node.name == "cropocalypse:pumpkin_plant_8" do
		pos.z = pos.z + -1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:pumpkin"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Pumpkin Spawn South Of Plant",
	nodenames = {"cropocalypse:pumpkin_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_pumpkin_spawn_south(...)
	end
})

-- This Spawns A Pumpkin East Of A fully Grown Plant (Z+)
function default.cropocalypse_pumpkin_spawn_east(pos, node)
	while node.name == "cropocalypse:pumpkin_plant_8" do
		pos.x = pos.x + 1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:pumpkin"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Pumpkin Spawn East Of Plant",
	nodenames = {"cropocalypse:pumpkin_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_pumpkin_spawn_east(...)
	end
})

-- This Spawns A Pumpkin West Of A fully Grown Plant (Z+)
function default.cropocalypse_pumpkin_spawn_west(pos, node)
	while node.name == "cropocalypse:pumpkin_plant_8" do
		pos.x = pos.x + -1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:pumpkin"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Pumpkin Spawn West Of Plant",
	nodenames = {"cropocalypse:pumpkin_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_pumpkin_spawn_west(...)
	end
})

-- Pumpkin Chunk Item Data
minetest.register_craftitem("cropocalypse:pumpkin_chunk", {
	description = ("Pumpkin Chunk"),
	inventory_image = "cropocalypse_pumpkin_chunk.png",
	wield_image = "cropocalypse_pumpkin_chunk.png",
	paramtype = "meshoptions",
	groups = {food_pumpkin = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Tiny Pumpkin Node
minetest.register_node("cropocalypse:pumpkin_plant", {
	description = "Tiny Pumpkin",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0, 0.25},
			{-0.0625, 0, -0.0625, 0.0625, 0.0625, 0.0625},
		}
	},
	tiles = {
		"cropocalypse_tiny_pumpkin_top.png",
		"cropocalypse_tiny_pumpkin_bottom.png",
		"cropocalypse_tiny_pumpkin.png",
		"cropocalypse_tiny_pumpkin.png",
		"cropocalypse_tiny_pumpkin.png",
		"cropocalypse_tiny_pumpkin.png"
	},
	groups = {pumpkin = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:pumpkin_plant",
	sounds = default.node_sound_wood_defaults(),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Register Watermelon Node
minetest.register_node("cropocalypse:watermelon", {
	description = "Watermelon",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	tiles = {
		"cropocalypse_watermelon_top_bottom.png",
		"cropocalypse_watermelon_top_bottom.png",
		"cropocalypse_watermelon.png",
		"cropocalypse_watermelon.png",
		"cropocalypse_watermelon.png",
		"cropocalypse_watermelon.png"
	},
	groups = {watermelon = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:watermelon",
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Register Wild Watermelon Node
minetest.register_node("cropocalypse:watermelon_wild", {
	description = "Watermelon",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	tiles = {
		"cropocalypse_watermelon_top_bottom.png",
		"cropocalypse_watermelon_top_bottom.png",
		"cropocalypse_watermelon.png",
		"cropocalypse_watermelon.png",
		"cropocalypse_watermelon.png",
		"cropocalypse_watermelon.png"
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1, not_in_creative_inventory = 1},
	drop = "cropocalypse:watermelon",
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Register Watermelon Decoration

minetest.register_decoration({
	name = "cropocalypse:watermelon_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 1374,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:watermelon_wild",
})

-- Watermelon Plant Farming

farming.register_plant("cropocalypse:watermelon_plant", {
	description = ("Watermelon Seed"),
	harvest_description = ("Tiny Watermelon"),
	inventory_image = "cropocalypse_watermelon_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {crop_watermelon = 1, flammable = 4},
	place_param2 = 3,
})

-- This Spawns A Watermelon North Of A fully Grown Plant (Z+)
function default.cropocalypse_watermelon_spawn_north(pos, node)
	while node.name == "cropocalypse:watermelon_plant_8" do
		pos.z = pos.z + 1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:watermelon"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Watermelon Spawn North Of Plant",
	nodenames = {"cropocalypse:pumpkin_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_watermelon_spawn_north(...)
	end
})

-- This Spawns A Watermelon South Of A fully Grown Plant (Z+)
function default.cropocalypse_watermelon_spawn_south(pos, node)
	while node.name == "cropocalypse:watermelon_plant_8" do
		pos.z = pos.z + -1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:watermelon"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Watermelon Spawn South Of Plant",
	nodenames = {"cropocalypse:watermelon_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_watermelon_spawn_south(...)
	end
})

-- This Spawns A Watermelon East Of A fully Grown Plant (Z+)
function default.cropocalypse_watermelon_spawn_east(pos, node)
	while node.name == "cropocalypse:watermelon_plant_8" do
		pos.x = pos.x + 1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:watermelon"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Watermelon Spawn East Of Plant",
	nodenames = {"cropocalypse:watermelon_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_watermelon_spawn_east(...)
	end
})

-- This Spawns A Watermelon West Of A fully Grown Plant (Z+)
function default.cropocalypse_watermelon_spawn_west(pos, node)
	while node.name == "cropocalypse:watermelon_plant_8" do
		pos.x = pos.x + -1
		node = minetest.get_node(pos)
	end
	if node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cropocalypse:watermelon"})
	return true
end

minetest.register_abm({
	label = "Cropocalypse Watermelon Spawn West Of Plant",
	nodenames = {"cropocalypse:watermelon_plant_8"},
	interval = 10,
	chance = 1000,
	action = function(...)
		default.cropocalypse_watermelon_spawn_west(...)
	end
})

-- Watermelon Slice Item Data

minetest.register_craftitem("cropocalypse:watermelon_slice", {
	description = ("Watermelon Slice"),
	inventory_image = "cropocalypse_watermelon_slice.png",
	wield_image = "cropocalypse_watermelon_slice.png",
	paramtype = "meshoptions",
	groups = {food_watermelon = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Tiny Watermelon Node
minetest.register_node("cropocalypse:watermelon_plant", {
	description = "Tiny Watermelon",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0, 0.25},
		}
	},
	tiles = {
		"cropocalypse_tiny_watermelon_top_bottom.png",
		"cropocalypse_tiny_watermelon_top_bottom.png",
		"cropocalypse_tiny_watermelon.png",
		"cropocalypse_tiny_watermelon.png",
		"cropocalypse_tiny_watermelon.png",
		"cropocalypse_tiny_watermelon.png"
	},
	groups = {watermelon = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:watermelon_plant",
	sounds = default.node_sound_wood_defaults(),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})











-- Register Wild Corn Node

minetest.register_node("cropocalypse:corn_wild", {
	description = ("Wild Corn"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 3,
	tiles = {"cropocalypse_corn_wild.png"},
	inventory_image = "cropocalypse_corn_wild.png",
	wield_image = "cropocalypse_corn_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_corn",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Corn Decoration

minetest.register_decoration({
	name = "cropocalypse:corn_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 7853,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:corn_wild",
})

-- Corn Plant Farming

farming.register_plant("cropocalypse:corn", {
	description = ("Corn Seed"),
	harvest_description = ("Corn"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_corn_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_corn = 1, flammable = 4},
	place_param2 = 3,
})

-- Corn Crop Size Overides As It Grows
minetest.override_item("cropocalypse:corn_4", {
	visual_scale = 2.0
})
minetest.override_item("cropocalypse:corn_5", {
	visual_scale = 2.0
})
minetest.override_item("cropocalypse:corn_6", {
	visual_scale = 3.0
})
minetest.override_item("cropocalypse:corn_7", {
	visual_scale = 3.0
})
minetest.override_item("cropocalypse:corn_8", {
	visual_scale = 3.0
})

-- Corn Item Data

minetest.register_craftitem("cropocalypse:corn", {
	description = ("Corn"),
	inventory_image = "cropocalypse_corn.png",
	wield_image = "cropocalypse_corn.png",
	paramtype = "meshoptions",
	groups = {food_corn = 1, flammable = 4},
	on_use = minetest.item_eat(2),
})

-- Register Wild Cocao Node

minetest.register_node("cropocalypse:cocao_wild", {
	description = ("Wild Cocao"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 3,
	tiles = {"cropocalypse_cocao_wild.png"},
	inventory_image = "cropocalypse_cocao_wild.png",
	wield_image = "cropocalypse_cocao_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_cocao",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Cocao Decoration

minetest.register_decoration({
	name = "cropocalypse:cocao_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 6820,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:cocao_wild",
})

-- Cocao Plant Farming

farming.register_plant("cropocalypse:cocao", {
	description = ("Cocao Seed"),
	harvest_description = ("Cocao"),
	inventory_image = "cropocalypse_cocao_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_cocao = 1, flammable = 4},
})

-- Cocao Crop Size Overides As It Grows
minetest.override_item("cropocalypse:cocao_4", {
	visual_scale = 2.0
})
minetest.override_item("cropocalypse:cocao_5", {
	visual_scale = 2.0
})
minetest.override_item("cropocalypse:cocao_6", {
	visual_scale = 3.0
})
minetest.override_item("cropocalypse:cocao_7", {
	visual_scale = 3.0
})
minetest.override_item("cropocalypse:cocao_8", {
	visual_scale = 3.0
})

-- Cocao Item Data

minetest.register_craftitem("cropocalypse:cocao", {
	description = ("Cocao"),
	inventory_image = "cropocalypse_cocao.png",
	wield_image = "cropocalypse_cocao.png",
	paramtype = "meshoptions",
	groups = {food_cocao = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Morel Mushroom Node

minetest.register_node("cropocalypse:morel_mushroom_wild", {
	description = ("Wild Morel Mushroom"),
	drawtype = "plantlike",
	waving = 0,
	tiles = {"cropocalypse_morel_mushroom_wild.png"},
	inventory_image = "cropocalypse_morel_mushroom_wild.png",
	wield_image = "cropocalypse_morel_mushroom_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_morel_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Morel Mushroom Decoration

minetest.register_decoration({
	name = "cropocalypse:morel_mushroom_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3961,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:morel_mushroom_wild",
})

-- Morel Mushroom Fungus Farming

farming.register_plant("cropocalypse:morel_mushroom", {
	description = ("Morel Mushroom Spore"),
	harvest_description = ("Morel Mushroom"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_morel_mushroom_seed.png",
	steps = 8,
	minlight = 0,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_morel_mushroom = 1, flammable = 4},
	place_param2 = 3,
})

-- Morel Mushroom Item Data

minetest.register_craftitem("cropocalypse:morel_mushroom", {
	description = ("Morel Mushroom"),
	inventory_image = "cropocalypse_morel_mushroom.png",
	wield_image = "cropocalypse_morel_mushroom.png",
	paramtype = "meshoptions",
	groups = {food_morel_mushroom = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Oyster Mushroom Node

minetest.register_node("cropocalypse:oyster_mushroom_wild", {
	description = ("Wild Oyster Mushroom"),
	drawtype = "plantlike",
	waving = 0,
	tiles = {"cropocalypse_oyster_mushroom_wild.png"},
	inventory_image = "cropocalypse_oyster_mushroom_wild.png",
	wield_image = "cropocalypse_oyster_mushroom_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_oyster_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Oyster Mushroom Decoration

minetest.register_decoration({
	name = "cropocalypse:oyster_mushroom_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 1673,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:oyster_mushroom_wild",
})

-- Oyster Mushroom Fungus Farming

farming.register_plant("cropocalypse:oyster_mushroom", {
	description = ("Oyster Mushroom Spore"),
	harvest_description = ("Oyster Mushroom"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_oyster_mushroom_seed.png",
	steps = 8,
	minlight = 0,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_oyster_mushroom = 1, flammable = 4},
	place_param2 = 3,
})

-- Oyster Mushroom Item Data

minetest.register_craftitem("cropocalypse:oyster_mushroom", {
	description = ("Oyster Mushroom"),
	inventory_image = "cropocalypse_oyster_mushroom.png",
	wield_image = "cropocalypse_oyster_mushroom.png",
	paramtype = "meshoptions",
	groups = {food_oyster_mushroom = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Shiitake Mushroom Node

minetest.register_node("cropocalypse:shiitake_mushroom_wild", {
	description = ("Wild Skiitake Mushroom"),
	drawtype = "plantlike",
	waving = 0,
	tiles = {"cropocalypse_shiitake_mushroom_wild.png"},
	inventory_image = "cropocalypse_shiitake_mushroom_wild.png",
	wield_image = "cropocalypse_shiitake_mushroom_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_shiitake_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Shiitake Mushroom Decoration

minetest.register_decoration({
	name = "cropocalypse:shiitake_mushroom_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 1183,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:shiitake_mushroom_wild",
})

-- Shiitake Mushroom Fungus Farming

farming.register_plant("cropocalypse:shiitake_mushroom", {
	description = ("Shiitake Mushroom Spore"),
	harvest_description = ("Shiitake Mushroom"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_shiitake_mushroom_seed.png",
	steps = 8,
	minlight = 0,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_shiitake_mushroom = 1, flammable = 4},
	place_param2 = 3,
})

-- Shiitake Mushroom Item Data

minetest.register_craftitem("cropocalypse:shiitake_mushroom", {
	description = ("Shiitake Mushroom"),
	inventory_image = "cropocalypse_shiitake_mushroom.png",
	wield_image = "cropocalypse_shiitake_mushroom.png",
	paramtype = "meshoptions",
	groups = {food_shiitake_mushroom = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})

-- Register Wild Button Mushroom Node

minetest.register_node("cropocalypse:button_mushroom_wild", {
	description = ("Wild Button Mushroom"),
	drawtype = "plantlike",
	waving = 0,
	tiles = {"cropocalypse_button_mushroom_wild.png"},
	inventory_image = "cropocalypse_button_mushroom_wild.png",
	wield_image = "cropocalypse_button_mushroom_wild.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:seed_button_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

-- Register Wild Button Mushroom Decoration

minetest.register_decoration({
	name = "cropocalypse:button_mushroom_wild",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 9303,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:button_mushroom_wild",
})

-- Button Mushroom Fungus Farming

farming.register_plant("cropocalypse:button_mushroom", {
	description = ("Button Mushroom Spore"),
	harvest_description = ("Button Mushroom"),
	paramtype2 = "meshoptions",
	inventory_image = "cropocalypse_button_mushroom_seed.png",
	steps = 8,
	minlight = 0,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"},
	groups = {food_button_mushroom = 1, flammable = 4},
	place_param2 = 3,
})

-- Button Mushroom Item Data

minetest.register_craftitem("cropocalypse:button_mushroom", {
	description = ("Button Mushroom"),
	inventory_image = "cropocalypse_button_mushroom.png",
	wield_image = "cropocalypse_button_mushroom.png",
	paramtype = "meshoptions",
	groups = {food_button_mushroom = 1, flammable = 4},
	on_use = minetest.item_eat(1),
})
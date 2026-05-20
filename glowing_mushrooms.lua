-- cropocalypse/glowing_mushrooms.lua
local S = core.get_translator("cropocalypse")

-- Adds Some Glowing Mushrooms That Originate In Rainforests
-- They Only Multiply On Their Respective Ores

-- Saucer Mushroom
-- This One Multiplies On Coal Ore

minetest.register_node("cropocalypse:saucer_mushroom", {
	description = S("Saucer Mushroom"),
	tiles = {"cropocalypse_saucer_mushroom.png"},
	inventory_image = "cropocalypse_saucer_mushroom.png",
	wield_image = "cropocalypse_saucer_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {saucer_mushroom = 1, food_saucer_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:saucer_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:saucer_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 6649,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:saucer_mushroom",
})

function flowers.saucer_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_coal"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Saucer Mushroom Spread",
	nodenames = {"group:saucer_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.saucer_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:saucer_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_saucer.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Puffed Mushroom
-- This One Multipleis On Iron Ore

minetest.register_node("cropocalypse:puffed_mushroom", {
	description = S("Puffed Mushroom"),
	tiles = {"cropocalypse_puffed_mushroom.png"},
	inventory_image = "cropocalypse_puffed_mushroom.png",
	wield_image = "cropocalypse_puffed_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {puffed_mushroom = 1, food_puffed_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:puffed_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:puffed_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 2343,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:puffed_mushroom",
})

function flowers.puffed_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_iron"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Puffed Mushroom Spread",
	nodenames = {"group:puffed_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.puffed_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:puffed_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_puffed.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Veiled Mushroom
-- This One Multiplies On Tin Ore

minetest.register_node("cropocalypse:veiled_mushroom", {
	description = S("Veiled Mushroom"),
	tiles = {"cropocalypse_veiled_mushroom.png"},
	inventory_image = "cropocalypse_veiled_mushroom.png",
	wield_image = "cropocalypse_veiled_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {veiled_mushroom = 1, food_veiled_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:veiled_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:veiled_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 6712,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:veiled_mushroom",
})

function flowers.veiled_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_tin"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Veiled Mushroom Spread",
	nodenames = {"group:veiled_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.veiled_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:veiled_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_veiled.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Slimy Mushroom
-- This One Multiplies On Copper Ore

minetest.register_node("cropocalypse:slimy_mushroom", {
	description = S("Slimy Mushroom"),
	tiles = {"cropocalypse_slimy_mushroom.png"},
	inventory_image = "cropocalypse_slimy_mushroom.png",
	wield_image = "cropocalypse_slimy_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {slimy_mushroom = 1, food_slimy_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:slimy_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:slimy_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 5567,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:slimy_mushroom",
})

function flowers.slimy_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_copper"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Slimy Mushroom Spread",
	nodenames = {"group:slimy_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.slimy_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:slimy_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_slimy.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- King Mushroom
-- This One Mulriplies On Gold Ore

minetest.register_node("cropocalypse:king_mushroom", {
	description = S("King Mushroom"),
	tiles = {"cropocalypse_king_mushroom.png"},
	inventory_image = "cropocalypse_king_mushroom.png",
	wield_image = "cropocalypse_king_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {king_mushroom = 1, food_king_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:king_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:king_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 6031,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:king_mushroom",
})

function flowers.king_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_gold"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "King Mushroom Spread",
	nodenames = {"group:king_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.king_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:king_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_king.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Melting Mushroom
-- This One Multiplies On Diamond Ore

minetest.register_node("cropocalypse:melting_mushroom", {
	description = S("Melting Mushroom"),
	tiles = {"cropocalypse_melting_mushroom.png"},
	inventory_image = "cropocalypse_melting_mushroom.png",
	wield_image = "cropocalypse_melting_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {melting_mushroom = 1, food_melting_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:melting_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:melting_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 7655,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:melting_mushroom",
})

function flowers.melting_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_diamond"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Melting Mushroom Spread",
	nodenames = {"group:melting_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.melting_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:melting_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_melting.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Magic Mushroom
-- This One Multiplies On Mese Ore

minetest.register_node("cropocalypse:magic_mushroom", {
	description = S("Magic Mushroom"),
	tiles = {"cropocalypse_magic_mushroom.png"},
	inventory_image = "cropocalypse_magic_mushroom.png",
	wield_image = "cropocalypse_magic_mushroom.png",
	drawtype = "plantlike",
	paramtype2 = "meshoptions",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {magic_mushroom = 1, food_magic_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:magic_mushroom",
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(4),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
	light_source = 9,
})

minetest.register_decoration({
	name = "cropocalypse:magic_mushroom",
	deco_type = "simple",
	param2 = 8,
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 1930,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:magic_mushroom",
})

function flowers.magic_mushroom_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 10 then
		if minetest.get_node_light(pos, nil) >= 11 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 75, y = pos.y - 50, z = pos.z - 75},
		{x = pos.x + 75, y = pos.y + 50, z = pos.z + 75},
		{"default:stone_with_mese"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 10 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Magic Mushroom Spread",
	nodenames = {"group:magic_mushroom"},
	interval = 11,
	chance = 75,
	action = function(...)
		flowers.magic_mushroom_spread(...)
	end,
})

if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:magic_mushroom" },
		interval = 1,
		chance = 3,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
				acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
				time = 1,
				amount = 1,
				exptime = 3,
				collisiondetection = true,
				collision_removal = true,
				glow = 14,
				texpool = {
					{ name = "particle_magic.png", alpha_tween = { 1, 0 }, scale = 1,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end
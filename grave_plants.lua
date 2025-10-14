-- cropocalypse/decorative_plants.lua

-- Adds Various Decorative Plants To The World
-- They Only Multiply On Close By Fresh Dirt
-- This Is To Prevent Infestations

-- Black Rose
minetest.register_node("cropocalypse:black_rose", {
	description = S("Black Rose"),
	tiles = {"cropocalypse_black_rose.png"},
	inventory_image = "cropocalypse_black_rose.png",
	wield_image = "cropocalypse_black_rose.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {grave_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:black_rose",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:black_rose",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.2,
		spread = {x = 10, y = 10, z = 10},
		seed = 8082,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grave"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:black_rose",
})

-- Dead Tree

minetest.register_node("cropocalypse:dead_tree", {
	description = S("Dead Tree"),
	tiles = {"cropocalypse_dead_tree.png"},
	inventory_image = "cropocalypse_dead_tree.png",
	wield_image = "cropocalypse_dead_tree.png",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 3,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {grave_plants = 1, snappy = 3, attached_node = 1, flammable = 4},
	drop = "cropocalypse:dead_tree",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:dead_tree",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.2,
		spread = {x = 50, y = 50, z = 50},
		seed = 6310,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grave"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:dead_tree",
})

-- Devils Club
minetest.register_node("cropocalypse:devils_club", {
	description = S("Devils Club"),
	tiles = {"cropocalypse_devils_club.png"},
	inventory_image = "cropocalypse_devils_club.png",
	wield_image = "cropocalypse_devils_club.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {grave_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:devils_club",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:devils_club",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.2,
		spread = {x = 10, y = 10, z = 10},
		seed = 6412,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grave"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:devils_club",
})

-- Deadly Amanita
minetest.register_node("cropocalypse:deadly_amanita", {
	description = S("Deadly Amanita"),
	tiles = {"cropocalypse_deadly_amanita.png"},
	inventory_image = "cropocalypse_deadly_amanita.png",
	wield_image = "cropocalypse_deadly_amanita.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {grave_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:deadly_amanita",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:deadly_amanita",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 6891,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grave"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:deadly_amanita",
})

-- Undead Grass
minetest.register_node("cropocalypse:undead_grass", {
	description = S("Undead Grass"),
	tiles = {"cropocalypse_undead_grass.png"},
	inventory_image = "cropocalypse_undead_grass.png",
	wield_image = "cropocalypse_undead_grass.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {grave_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:undead_grass",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:undead_grass",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.95,
		spread = {x = 10, y = 10, z = 10},
		seed = 6177,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grave"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:undead_grass",
})


-- The Spreading Mechanics Of The Grave Plants
function flowers.grave_plants_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 15 then
		if minetest.get_node_light(pos, nil) >= 9000 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 1, y = pos.y - 2, z = pos.z - 1},
		{x = pos.x + 1, y = pos.y + 2, z = pos.z + 1},
		{"grave:grave_dirt"})
	if #positions == 0 then
		return
	end
	local pos2 = positions[math.random(#positions)]
	pos2.y = pos2.y + 1
	if minetest.get_node_light(pos2, 0.5) <= 15 then
		minetest.set_node(pos2, {name = node.name})
	end
end

minetest.register_abm({
	label = "Grave Plants Spread",
	nodenames = {"group:grave_plants"},
	interval = 11,
	chance = 200,
	action = function(...)
		flowers.grave_plants_spread(...)
	end,
})


-- Wisp Particle Effect For The Grave Plants
if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:grave_plants" },
		interval = 1,
		chance = 500,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0.1, 0.1, 0.1) },
				acc = { min = vector.new(-0.2, -0.1, -0.2), max = vector.new(0.2, 0.1, 0.2) },
				time = 1,
				amount = 1,
				exptime = 5,
				collisiondetection = true,
				collision_removal = true,
				glow = 7,
				texpool = {
					{ name = "particle_wisp.png", alpha_tween = { 1, 1 }, scale = 2,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Bat Particle Effect For The Grave Plants
if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:grave_plants" },
		interval = 1,
		chance = 1000,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 3, -1.5)), max = vector.add(pos, vector.new(1.5, 3.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0.1, 0.1, 0.1) },
				acc = { min = vector.new(-0.4, 0, -0.4), max = vector.new(0.4, 0.1, 0.4) },
				time = 1,
				amount = 1,
				exptime = 5,
				collisiondetection = true,
				collision_removal = true,
				glow = 0,
				texpool = {
					{ name = "particle_bat.png", alpha_tween = { 1, 1 }, scale = 2,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Mist Particle Effect For The Grave Plants
if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:grave_plants" },
		interval = 1,
		chance = 100,
		catch_up = false,
		action = function(pos, node)
			minetest.add_particlespawner({
				pos = { min = vector.add(pos, vector.new(-1.5, 0, -1.5)), max = vector.add(pos, vector.new(1.5, 1.5, 1.5)) },
				vel = { min = vector.new(0, 0, 0), max = vector.new( 0.1, 0.1, 0.1) },
				acc = { min = vector.new(-0.2, 0, -0.2), max = vector.new(0.2, 0, 0.2) },
				time = 1,
				amount = 1,
				exptime = 5,
				collisiondetection = true,
				collision_removal = true,
				glow = 0,
				texpool = {
					{ name = "particle_mist.png", alpha_tween = { 1, 0 }, scale = 50,
					animation = {type = "vertical_frames", aspect_w = 48, aspect_h = 48, length = 1}},
				}
			})
		end
	})
end
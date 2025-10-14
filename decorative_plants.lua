-- cropocalypse/decorative_plants.lua

-- Adds Various Decorative Plants To The World
-- They Only Multiply On Close By Fresh Dirt
-- This Is To Prevent Infestations

-- Beach Pea
minetest.register_node("cropocalypse:beach_pea", {
	description = S("Beach Pea"),
	tiles = {"cropocalypse_beach_pea.png"},
	inventory_image = "cropocalypse_beach_pea.png",
	wield_image = "cropocalypse_beach_pea.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:beach_pea",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:beach_pea",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 7746,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:beach_pea",
})

-- Bells Of Ireland
minetest.register_node("cropocalypse:bells_of_ireland", {
	description = S("Bells Of Ireland"),
	tiles = {"cropocalypse_bells_of_ireland.png"},
	inventory_image = "cropocalypse_bells_of_ireland.png",
	wield_image = "cropocalypse_bells_of_ireland.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:bells_of_ireland",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:bells_of_ireland",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 4066,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:bells_of_ireland",
})

-- Bluebell
minetest.register_node("cropocalypse:bluebell", {
	description = S("Bluebell"),
	tiles = {"cropocalypse_bluebell.png"},
	inventory_image = "cropocalypse_bluebell.png",
	wield_image = "cropocalypse_bluebell.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:bluebell",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:bluebell",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 9993,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:bluebell",
})

-- Bog Star
minetest.register_node("cropocalypse:bog_star", {
	description = S("Bog Star"),
	tiles = {"cropocalypse_bog_star.png"},
	inventory_image = "cropocalypse_bog_star.png",
	wield_image = "cropocalypse_bog_star.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:bog_star",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:bog_star",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 1162,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:bog_star",
})

-- Buttercup
minetest.register_node("cropocalypse:buttercup", {
	description = S("Buttercup"),
	tiles = {"cropocalypse_buttercup.png"},
	inventory_image = "cropocalypse_buttercup.png",
	wield_image = "cropocalypse_buttercup.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:buttercup",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:buttercup",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 8095,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:buttercup",
})

-- Catchfly
minetest.register_node("cropocalypse:catchfly", {
	description = S("Catchfly"),
	tiles = {"cropocalypse_catchfly.png"},
	inventory_image = "cropocalypse_catchfly.png",
	wield_image = "cropocalypse_catchfly.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:catchfly",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:catchfly",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 9338,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:catchfly",
})

-- Cattail
minetest.register_node("cropocalypse:cattail", {
	description = S("Cattail"),
	tiles = {"cropocalypse_cattail.png"},
	inventory_image = "cropocalypse_cattail.png",
	wield_image = "cropocalypse_cattail.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:cattail",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:cattail",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 3726,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:cattail",
})

-- Chocolate Lily
minetest.register_node("cropocalypse:chocolate_lily", {
	description = S("Chocolate Lily"),
	tiles = {"cropocalypse_chocolate_lily.png"},
	inventory_image = "cropocalypse_chocolate_lily.png",
	wield_image = "cropocalypse_chocolate_lily.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:chocolate_lily",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:chocolate_lily",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 8643,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:chocolate_lily",
})

-- Columbine
minetest.register_node("cropocalypse:columbine", {
	description = S("Columbine"),
	tiles = {"cropocalypse_columbine.png"},
	inventory_image = "cropocalypse_columbine.png",
	wield_image = "cropocalypse_columbine.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:columbine",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:columbine",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 2119,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:columbine",
})

-- Daffodil
minetest.register_node("cropocalypse:daffodil", {
	description = S("Daffodil"),
	tiles = {"cropocalypse_daffodil.png"},
	inventory_image = "cropocalypse_daffodil.png",
	wield_image = "cropocalypse_daffodil.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:daffodil",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:daffodil",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 8236,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:daffodil",
})

-- Dwarf Sunflower
minetest.register_node("cropocalypse:dwarf_sunflower", {
	description = S("Dwarf Sunflower"),
	tiles = {"cropocalypse_dwarf_sunflower.png"},
	inventory_image = "cropocalypse_dwarf_sunflower.png",
	wield_image = "cropocalypse_dwarf_sunflower.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:dwarf_sunflower",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:dwarf_sunflower",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 3188,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","savanna"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:dwarf_sunflower",
})

-- Fireweed
minetest.register_node("cropocalypse:fireweed", {
	description = S("Fireweed"),
	tiles = {"cropocalypse_fireweed.png"},
	inventory_image = "cropocalypse_fireweed.png",
	wield_image = "cropocalypse_fireweed.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:fireweed",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:fireweed",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 7798,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:fireweed",
})

-- Flowering Fern
minetest.register_node("cropocalypse:flowering_fern", {
	description = S("Flowering Fern"),
	tiles = {"cropocalypse_flowering_fern.png"},
	inventory_image = "cropocalypse_flowering_fern.png",
	wield_image = "cropocalypse_flowering_fern.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:flowering_fern",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:flowering_fern",
	deco_type = "simple",
	place_on = {"group:soil","group:sand","default:permafrost_with_stones","default:permafrost_with_moss"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.35,
		spread = {x = 10, y = 10, z = 10},
		seed = 7288,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","coniferous_forest","rainforest","grassland","tundra"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:flowering_fern",
})

-- Iris
minetest.register_node("cropocalypse:iris", {
	description = S("Iris"),
	tiles = {"cropocalypse_iris.png"},
	inventory_image = "cropocalypse_iris.png",
	wield_image = "cropocalypse_iris.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:iris",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:iris",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 6584,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:iris",
})

-- Lupine
minetest.register_node("cropocalypse:lupine", {
	description = S("Lupine"),
	tiles = {"cropocalypse_lupine.png"},
	inventory_image = "cropocalypse_lupine.png",
	wield_image = "cropocalypse_lupine.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:lupine",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:lupine",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 5557,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:lupine",
})

-- Marigold
minetest.register_node("cropocalypse:marigold", {
	description = S("Marigold"),
	tiles = {"cropocalypse_marigold.png"},
	inventory_image = "cropocalypse_marigold.png",
	wield_image = "cropocalypse_marigold.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:marigold",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:marigold",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 4257,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"savanna","desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:marigold",
})

-- Morning Glory
minetest.register_node("cropocalypse:morning_glory", {
	description = S("Morning Glory"),
	tiles = {"cropocalypse_morning_glory.png"},
	inventory_image = "cropocalypse_morning_glory.png",
	wield_image = "cropocalypse_morning_glory.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:morning_glory",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:morning_glory",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 4833,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:morning_glory",
})

-- Nasturtium
minetest.register_node("cropocalypse:nasturtium", {
	description = S("Nasturtium"),
	tiles = {"cropocalypse_nasturtium.png"},
	inventory_image = "cropocalypse_nasturtium.png",
	wield_image = "cropocalypse_nasturtium.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:nasturtium",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:nasturtium",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 1381,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:nasturtium",
})

-- Nightshade
minetest.register_node("cropocalypse:nightshade", {
	description = S("Nightshade"),
	tiles = {"cropocalypse_nightshade.png"},
	inventory_image = "cropocalypse_nightshade.png",
	wield_image = "cropocalypse_nightshade.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:nightshade",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:nightshade",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 4721,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:nightshade",
})

-- Pansy
minetest.register_node("cropocalypse:pansy", {
	description = S("Pansy"),
	tiles = {"cropocalypse_pansy.png"},
	inventory_image = "cropocalypse_pansy.png",
	wield_image = "cropocalypse_pansy.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:pansy",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:pansy",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 5237,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:pansy",
})

-- Peace Lily
minetest.register_node("cropocalypse:peace_lily", {
	description = S("Peace Lily"),
	tiles = {"cropocalypse_peace_lily.png"},
	inventory_image = "cropocalypse_peace_lily.png",
	wield_image = "cropocalypse_peace_lily.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:peace_lily",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:peace_lily",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 8142,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:peace_lily",
})

-- Poinsettia
minetest.register_node("cropocalypse:poinsettia", {
	description = S("Poinsettia"),
	tiles = {"cropocalypse_poinsettia.png"},
	inventory_image = "cropocalypse_poinsettia.png",
	wield_image = "cropocalypse_poinsettia.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:poinsettia",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:poinsettia",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 9395,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"savanna","rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:poinsettia",
})

-- Prickly Rose
minetest.register_node("cropocalypse:prickly_rose", {
	description = S("Prickly Rose"),
	tiles = {"cropocalypse_prickly_rose.png"},
	inventory_image = "cropocalypse_prickly_rose.png",
	wield_image = "cropocalypse_prickly_rose.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:prickly_rose",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:prickly_rose",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 8645,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"coniferous_forest","taiga"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:prickly_rose",
})

-- Rafflesia
minetest.register_node("cropocalypse:rafflesia", {
	description = S("Rafflesia"),
	tiles = {"cropocalypse_rafflesia.png"},
	inventory_image = "cropocalypse_rafflesia.png",
	wield_image = "cropocalypse_rafflesia.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:rafflesia",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:rafflesia",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 3924,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:rafflesia",
})

-- Skunk Cabbage
minetest.register_node("cropocalypse:skunk_cabbage", {
	description = S("Skunk Cabbage"),
	tiles = {"cropocalypse_skunk_cabbage.png"},
	inventory_image = "cropocalypse_skunk_cabbage.png",
	wield_image = "cropocalypse_skunk_cabbage.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:skunk_cabbage",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:skunk_cabbage",
	deco_type = "simple",
	place_on = {"group:soil","group:sand","default:permafrost_with_stones","default:permafrost_with_moss"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 4907,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","tundra"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:skunk_cabbage",
})

-- Squirrel Tail
minetest.register_node("cropocalypse:squirrel_tail", {
	description = S("Squirrel Tail"),
	tiles = {"cropocalypse_squirrel_tail.png"},
	inventory_image = "cropocalypse_squirrel_tail.png",
	wield_image = "cropocalypse_squirrel_tail.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:squirrel_tail",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:squirrel_tail",
	deco_type = "simple",
	place_on = {"group:soil","group:sand","default:permafrost_with_stones","default:permafrost_with_moss"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.35,
		spread = {x = 10, y = 10, z = 10},
		seed = 8505,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","savanna","grassland","cold_desert","tundra"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:squirrel_tail",
})

-- Tundra Cotton
minetest.register_node("cropocalypse:tundra_cotton", {
	description = S("Tundra Cotton"),
	tiles = {"cropocalypse_tundra_cotton.png"},
	inventory_image = "cropocalypse_tundra_cotton.png",
	wield_image = "cropocalypse_tundra_cotton.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:tundra_cotton",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:tundra_cotton",
	deco_type = "simple",
	place_on = {"group:soil","group:sand","default:permafrost_with_stones","default:permafrost_with_moss"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.35,
		spread = {x = 10, y = 10, z = 10},
		seed = 3944,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","tundra"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:tundra_cotton",
})

-- White Lily
minetest.register_node("cropocalypse:white_lily", {
	description = S("White Lily"),
	tiles = {"cropocalypse_white_lily.png"},
	inventory_image = "cropocalypse_white_lily.png",
	wield_image = "cropocalypse_white_lily.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:white_lily",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:white_lily",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 7156,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:white_lily",
})

-- Whorled Lousewort
minetest.register_node("cropocalypse:whorled_lousewort", {
	description = S("Whorled Lousewort"),
	tiles = {"cropocalypse_whorled_lousewort.png"},
	inventory_image = "cropocalypse_whorled_lousewort.png",
	wield_image = "cropocalypse_whorled_lousewort.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:whorled_lousewort",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:whorled_lousewort",
	deco_type = "simple",
	place_on = {"group:soil","group:sand","default:permafrost_with_stones","default:permafrost_with_moss"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 6758,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:whorled_lousewort",
})

-- Wild Celery
minetest.register_node("cropocalypse:wild_celery", {
	description = S("Wild Celery"),
	tiles = {"cropocalypse_wild_celery.png"},
	inventory_image = "cropocalypse_wild_celery.png",
	wield_image = "cropocalypse_wild_celery.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:wild_celery",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:wild_celery",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 2947,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:wild_celery",
})

-- Wild Wheat
minetest.register_node("cropocalypse:wild_wheat", {
	description = S("Wild Wheat"),
	tiles = {"cropocalypse_wild_wheat.png"},
	inventory_image = "cropocalypse_wild_wheat.png",
	wield_image = "cropocalypse_wild_wheat.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:wild_wheat",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:wild_wheat",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.35,
		spread = {x = 10, y = 10, z = 10},
		seed = 6035,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","savanna","desert","sandstone_desert","cold_desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:wild_wheat",
})

-- Yarrow
minetest.register_node("cropocalypse:yarrow", {
	description = S("Yarrow"),
	tiles = {"cropocalypse_yarrow.png"},
	inventory_image = "cropocalypse_yarrow.png",
	wield_image = "cropocalypse_yarrow.png",
	drawtype = "plantlike",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {decorative_plants = 1, snappy = 3, attached_node = 1, flammable = 1},
	drop = "cropocalypse:yarrow",
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	},
})

minetest.register_decoration({
	name = "cropocalypse:yarrow",
	deco_type = "simple",
	place_on = {"group:soil","group:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 10, y = 10, z = 10},
		seed = 2206,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland","coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:yarrow",
})

-- The Spreading Mechanics Of The Decorative Plants
function flowers.decorative_plants_spread(pos, node)
	if minetest.get_node_light(pos, 0.5) > 15 then
		if minetest.get_node_light(pos, nil) >= 9000 then
			minetest.remove_node(pos)
		end
		return
	end
	local positions = minetest.find_nodes_in_area_under_air(
		{x = pos.x - 1, y = pos.y - 2, z = pos.z - 1},
		{x = pos.x + 1, y = pos.y + 2, z = pos.z + 1},
		{"default:dirt"})
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
	label = "Decorative Plants Spread",
	nodenames = {"group:decorative_plants"},
	interval = 11,
	chance = 200,
	action = function(...)
		flowers.decorative_plants_spread(...)
	end,
})


-- Murder Hornet Particle Effect For The Decorative Plants
if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:decorative_plants" },
		interval = 1,
		chance = 1000,
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
				glow = 0,
				texpool = {
					{ name = "particle_murder_hornet.png", alpha_tween = { 1, 1 }, scale = 0.5,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Firefly Particle Effect For The Decorative Plants
if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:decorative_plants" },
		interval = 1,
		chance = 1000,
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
				glow = 0,
				texpool = {
					{ name = "particle_magic.png", alpha_tween = { 1, 1 }, scale = 0.5,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end

-- Moth Particle Effect For The Decorative Plants
if minetest.features.particlespawner_tweenable then
	minetest.register_abm({
		nodenames = { "group:decorative_plants" },
		interval = 1,
		chance = 1000,
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
				glow = 0,
				texpool = {
					{ name = "particle_moth.png", alpha_tween = { 1, 1 }, scale = 0.5,
					animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1}},
				}
			})
		end
	})
end
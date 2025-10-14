-- cropocalypse/crafting.lua

-- These Are The Crafting Recipes

-- Wooden Bowl

minetest.register_craftitem("cropocalypse:wooden_bowl", {
	description = S("Wooden Bowl"),
	inventory_image = "cropocalypse_wooden_bowl.png",
	groups = {flammable = 2},
})

minetest.register_craft({
	output = "cropocalypse:wooden_bowl 3",
	recipe = {
		{"group:wood", "", "group:wood"},
		{"", "group:wood", ""},
	}
})

-- Sliced Apples

minetest.register_craftitem("cropocalypse:sliced_apples", {
	description = S("Sliced Apples"),
	inventory_image = "cropocalypse_sliced_apples.png",
	on_use = minetest.item_eat(2),
	groups = {food_sliced_apples = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:sliced_apples 4",
	recipe = {"default:apple", "default:apple", "default:apple"}
})

-- Apple Cider Vinegar

minetest.register_craftitem("cropocalypse:apple_cider_vinegar", {
	description = S("Apple Cider Vinegar"),
	inventory_image = "cropocalypse_apple_cider_vinegar.png",
	on_use = minetest.item_eat(1),
	groups = {food_apple_cider_vinegar = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:apple_cider_vinegar",
	recipe = {"cropocalypse:sliced_apples", "cropocalypse:sliced_apples", "cropocalypse:sugar", "vessels:glass_bottle"}
})

-- Saltwater Kelp Jar

minetest.register_craftitem("cropocalypse:saltwater_kelp_jar", {
	description = S("Saltwater Kelp Jar"),
	inventory_image = "cropocalypse_saltwater_kelp_jar.png",
	on_use = minetest.item_eat(1),
	groups = {food_saltwater_kelp_jar = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:saltwater_kelp_jar",
	recipe = {"default:sand_with_kelp", "default:sand_with_kelp", "default:sand_with_kelp", "vessels:glass_bottle"}
})

-- Multiplying Saltwater Kelp Jars Because Kelp Is Not Currently Renewable

minetest.register_craftitem("cropocalypse:saltwater_kelp_jar", {
	description = S("Saltwater Kelp Jar"),
	inventory_image = "cropocalypse_saltwater_kelp_jar.png",
	on_use = minetest.item_eat(1),
	groups = {food_saltwater_kelp_jar = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:saltwater_kelp_jar 3",
	recipe = {"cropocalypse:saltwater_kelp_jar", "vessels:glass_bottle", "vessels:glass_bottle"}
})

-- Saltwater Kelp Jar Back To Kelp

minetest.register_craft({
	type = "shapeless",
	output = "default:sand_with_kelp",
	recipe = {"cropocalypse:saltwater_kelp_jar"}
})

-- Kelp Agar

minetest.register_craftitem("cropocalypse:kelp_agar", {
	description = S("Kelp Agar"),
	inventory_image = "cropocalypse_kelp_agar.png",
	on_use = minetest.item_eat(1),
	groups = {food_kelp_agar = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:kelp_agar",
	recipe = "cropocalypse:saltwater_kelp_jar",
})

-- Sliced Carrots
minetest.register_craftitem("cropocalypse:sliced_carrots", {
	description = S("Sliced Carrots"),
	inventory_image = "cropocalypse_sliced_carrots.png",
	on_use = minetest.item_eat(2),
	groups = {food_sliced_carrots = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:sliced_carrots 2",
	recipe = {"cropocalypse:carrot", "cropocalypse:carrot", "cropocalypse:carrot"}
})

-- Carrot Cake
minetest.register_craftitem("cropocalypse:carrot_cake", {
	description = S("Carrot Cake"),
	inventory_image = "cropocalypse_carrot_cake.png",
	on_use = minetest.item_eat(7),
	groups = {food_carrot_cake = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:carrot_cake",
	recipe = {
		"farming:flour", "farming:flour", "cropocalypse:sugar",
		"cropocalypse:sliced_carrots", "cropocalypse:sliced_carrots", "cropocalypse:sliced_carrots",
		"cropocalypse:soy_milk"
	}
})

-- Mashed Potatoes
minetest.register_craftitem("cropocalypse:mashed_potatoes", {
	description = S("Mashed Potatoes"),
	inventory_image = "cropocalypse_mashed_potatoes.png",
	on_use = minetest.item_eat(4),
	groups = {food_mashed_potatoes = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:mashed_potatoes",
	recipe = {"cropocalypse:wooden_bowl", "cropocalypse:potato", "cropocalypse:potato", "cropocalypse:potato"}
})

-- Sugar

minetest.register_craftitem("cropocalypse:sugar", {
	description = S("Sugar"),
	inventory_image = "cropocalypse_sugar.png",
	on_use = minetest.item_eat(1),
	groups = {food_sugar = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:sugar 2",
	recipe = {"cropocalypse:beet", "cropocalypse:beet", "cropocalypse:beet"}
})

-- Soybean Water

minetest.register_craftitem("cropocalypse:soybean_water", {
	description = S("Soybean Water"),
	inventory_image = "cropocalypse_soybean_water.png",
	on_use = minetest.item_eat(1),
	groups = {food_soybean_water = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:soybean_water",
	recipe = {"cropocalypse:soybean", "cropocalypse:soybean", "cropocalypse:soybean", "vessels:glass_bottle"}
})

-- Soy Milk

minetest.register_craftitem("cropocalypse:soy_milk", {
	description = S("Soy Milk"),
	inventory_image = "cropocalypse_soy_milk.png",
	on_use = minetest.item_eat(4),
	groups = {food_soy_milk = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:soy_milk",
	recipe = "cropocalypse:soybean_water",
})

-- Soy Butter

minetest.register_craftitem("cropocalypse:soy_butter", {
	description = S("Soy Butter"),
	inventory_image = "cropocalypse_soy_butter.png",
	on_use = minetest.item_eat(4),
	groups = {food_soy_butter = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:soy_butter",
	recipe = {"cropocalypse:wooden_bowl", "cropocalypse:soy_milk", "cropocalypse:apple_cider_vinegar", "cropocalypse:kelp_agar"}
})

-- Uncooked Garlic Bread

minetest.register_craftitem("cropocalypse:uncooked_garlic_bread", {
	description = S("Uncooked Garlic Bread"),
	inventory_image = "cropocalypse_uncooked_garlic_bread.png",
	on_use = minetest.item_eat(3),
	groups = {food_uncooked_garlic_bread = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:uncooked_garlic_bread",
	recipe = {"farming:bread", "cropocalypse:soy_butter", "cropocalypse:garlic"}
})

-- Cooked Garlic Bread

minetest.register_craftitem("cropocalypse:cooked_garlic_bread", {
	description = S("Cooked Garlic Bread"),
	inventory_image = "cropocalypse_cooked_garlic_bread.png",
	on_use = minetest.item_eat(8),
	groups = {food_cooked_garlic_bread = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:cooked_garlic_bread",
	recipe = "cropocalypse:uncooked_garlic_bread",
})

-- Tiny Pumpkin To Pumpkin
minetest.register_craft({
	output = "cropocalypse:pumpkin",
	recipe = {
		{"cropocalypse:pumpkin_plant", "cropocalypse:pumpkin_plant", "cropocalypse:pumpkin_plant"},
		{"cropocalypse:pumpkin_plant", "cropocalypse:pumpkin_plant", "cropocalypse:pumpkin_plant"},
		{"cropocalypse:pumpkin_plant", "cropocalypse:pumpkin_plant", "cropocalypse:pumpkin_plant"},
	}
})

-- Pumpkin Chunks To Pumpkin
minetest.register_craft({
	output = "cropocalypse:pumpkin",
	recipe = {
		{"cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk"},
		{"cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk"},
		{"cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk"},
	}
})

-- Pumpkin To Pumpkin Chunks
minetest.register_craft({
	output = "cropocalypse:pumpkin_chunk 9",
	recipe = {
		{"cropocalypse:pumpkin"},
	}
})

-- Pumpkin Chunks To Pumpkin Seed
minetest.register_craft({
	output = "cropocalypse:seed_pumpkin_plant",
	recipe = {
		{"cropocalypse:pumpkin_chunk"},
	}
})

-- Register Carved Pumpkin Node
minetest.register_node("cropocalypse:carved_pumpkin", {
	description = "Carved Pumpkin",
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
		"cropocalypse_carved_pumpkin.png"
	},
	groups = {pumpkin = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:carved_pumpkin",
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Pumpkin To Carved Pumpkin
minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:carved_pumpkin",
	recipe = {"cropocalypse:pumpkin", "default:sword_wood"}
})

-- Register Jack-O'Lantern Node
minetest.register_node("cropocalypse:jack_olantern", {
	description = "Jack O'Lantern",
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
		"cropocalypse_jack_olantern.png"
	},
	groups = {pumpkin = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:jack_olantern",
	sounds = default.node_sound_wood_defaults(),
	light_source = 11,
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Carved Pumpkin To Jack O'Lantern
minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:jack_olantern",
	recipe = {"cropocalypse:carved_pumpkin", "default:torch"}
})

-- Uncooked Pumpkin Pie
minetest.register_craftitem("cropocalypse:uncooked_pumpkin_pie", {
	description = S("Uncooked Pumpkin Pie"),
	inventory_image = "cropocalypse_uncooked_pumpkin_pie.png",
	on_use = minetest.item_eat(4),
	groups = {food_uncooked_pumpkin_pie = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:uncooked_pumpkin_pie",
	recipe = {
		"farming:flour", "cropocalypse:sugar", "cropocalypse:sugar",
		"cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk", "cropocalypse:pumpkin_chunk",
		"cropocalypse:soy_milk"
	}
})

-- Cooked Pumpkin Pie
minetest.register_craftitem("cropocalypse:cooked_pumpkin_pie", {
	description = S("Cooked Pumpkin Pie"),
	inventory_image = "cropocalypse_cooked_pumpkin_pie.png",
	on_use = minetest.item_eat(8),
	groups = {food_cooked_pumpkin_pie = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:cooked_pumpkin_pie",
	recipe = "cropocalypse:uncooked_pumpkin_pie",
})

-- Tiny Watermelon To Watermelon
minetest.register_craft({
	output = "cropocalypse:watermelon",
	recipe = {
		{"cropocalypse:watermelon_plant", "cropocalypse:watermelon_plant", "cropocalypse:watermelon_plant"},
		{"cropocalypse:watermelon_plant", "cropocalypse:watermelon_plant", "cropocalypse:watermelon_plant"},
		{"cropocalypse:watermelon_plant", "cropocalypse:watermelon_plant", "cropocalypse:watermelon_plant"},
	}
})

-- Watermelon Slice To Watermelon
minetest.register_craft({
	output = "cropocalypse:watermelon",
	recipe = {
		{"cropocalypse:watermelon_slice", "cropocalypse:watermelon_slice", "cropocalypse:watermelon_slice"},
		{"cropocalypse:watermelon_slice", "cropocalypse:watermelon_slice", "cropocalypse:watermelon_slice"},
		{"cropocalypse:watermelon_slice", "cropocalypse:watermelon_slice", "cropocalypse:watermelon_slice"},
	}
})

-- Watermelon To Watermelon Chunks
minetest.register_craft({
	output = "cropocalypse:watermelon_slice 9",
	recipe = {
		{"cropocalypse:watermelon"},
	}
})

-- Watermelon Slice To Watermelon Seed
minetest.register_craft({
	output = "cropocalypse:seed_watermelon_plant",
	recipe = {
		{"cropocalypse:watermelon_slice"},
	}
})

-- Register Carved Watermelon Node
minetest.register_node("cropocalypse:carved_watermelon", {
	description = "Carved Watermelon",
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
		"cropocalypse_carved_watermelon.png"
	},
	groups = {watermelon = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:carved_watermelon",
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Watermelon To Carved Watermelon
minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:carved_watermelon",
	recipe = {"cropocalypse:watermelon", "default:sword_wood"}
})

-- Register Jack O'Lantern Node
minetest.register_node("cropocalypse:jack_o_lantern", {
	description = "Jack-o'-lantern",
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
		"cropocalypse_jack_o_lantern.png"
	},
	groups = {watermelon = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = "cropocalypse:jack_o_lantern",
	sounds = default.node_sound_wood_defaults(),
	light_source = 11,
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false
})

-- Carved Watermelon To Jack-o'_lantern
minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:jack_o_lantern",
	recipe = {"cropocalypse:carved_watermelon", "default:torch"}
})

-- Corn On The Cob

minetest.register_craftitem("cropocalypse:corn_on_the_cob", {
	description = S("Corn On The Cob"),
	inventory_image = "cropocalypse_corn_on_the_cob.png",
	on_use = minetest.item_eat(4),
	groups = {food_corn_on_the_cob = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:corn_on_the_cob",
	recipe = "cropocalypse:corn",
})

-- Cocao Pulp

minetest.register_craftitem("cropocalypse:cocao_pulp", {
	description = S("Cocao Pulp"),
	inventory_image = "cropocalypse_cocao_pulp.png",
	on_use = minetest.item_eat(1),
	groups = {food_cocao_pulp = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:cocao_pulp",
	recipe = {"cropocalypse:wooden_bowl", "cropocalypse:cocao", "cropocalypse:cocao", "cropocalypse:cocao"}
})

-- Roasted Cocao

minetest.register_craftitem("cropocalypse:roasted_cocao", {
	description = S("Roasted Cocao"),
	inventory_image = "cropocalypse_roasted_cocao.png",
	on_use = minetest.item_eat(2),
	groups = {food_roasted_cocao = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:roasted_cocao",
	recipe = "cropocalypse:cocao_pulp",
})

-- Cocao Paste

minetest.register_craftitem("cropocalypse:cocao_paste", {
	description = S("Cocao Paste"),
	inventory_image = "cropocalypse_cocao_paste.png",
	on_use = minetest.item_eat(2),
	groups = {food_cocao_paste = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:cocao_paste",
	recipe = {"cropocalypse:roasted_cocao", "cropocalypse:sugar", "cropocalypse:sugar"}
})

-- Chocolate

minetest.register_craftitem("cropocalypse:chocolate", {
	description = S("Chocolate"),
	inventory_image = "cropocalypse_chocolate.png",
	on_use = minetest.item_eat(4),
	groups = {food_chocolate = 1, flammable = 1},
})

minetest.register_craft({
	type = "cooking",
	output = "cropocalypse:chocolate",
	recipe = "cropocalypse:cocao_paste",
})

-- Mushroom Surprise

minetest.register_craftitem("cropocalypse:mushroom_surprise", {
	description = S("Mushroom Surprise"),
	inventory_image = "cropocalypse_mushroom_surprise.png",
	on_use = minetest.item_eat(6),
	groups = {food_mushroom_surprise = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "cropocalypse:mushroom_surprise",
	recipe = {"cropocalypse:wooden_bowl", "cropocalypse:morel_mushroom", "cropocalypse:oyster_mushroom", "cropocalypse:shiitake_mushroom", "cropocalypse:button_mushroom"}
})

-- Wheat From Wild Wheat

minetest.register_craft({
	type = "shapeless",
	output = "farming:wheat",
	recipe = {"cropocalypse:wild_wheat", "cropocalypse:wild_wheat"}
})

-- Cotton From Tundra Cotton

minetest.register_craft({
	type = "shapeless",
	output = "farming:cotton",
	recipe = {"cropocalypse:tundra_cotton", "cropocalypse:tundra_cotton"}
})

-- Light Blue Dye Item Register
minetest.register_craftitem("cropocalypse:light_blue_dye", {
	description = S("Light Blue Dye"),
	inventory_image = "cropocalypse_light_blue.png",
	groups = {light_blue_dye = 1, flammable = 1},
})

-- Light Blue Dye Recipe
minetest.register_craft({
	output = "cropocalypse:light_blue_dye 2",
	recipe = {
		{"cropocalypse:flax"}
	}
})

-- Flax To String Recipe
minetest.register_craft({
	type = "shapeless",
	output = "farming:string 2",
	recipe = {"cropocalypse:flax", "cropocalypse:flax", "cropocalypse:flax"}
})

-- String To Linen Recipe
minetest.register_craft({
	output = "cropocalypse:linen 1",
	recipe = {
		{"farming:string", "farming:string"},
		{"farming:string", "farming:string"}
	}
})

-- Linen Item Register
minetest.register_craftitem("cropocalypse:linen", {
	description = S("Linen"),
	inventory_image = "cropocalypse_linen.png",
	groups = {linen = 1, flammable = 1, thread = 1},
})

-- Linen To Wool Recipe
minetest.register_craft({
	type = "shapeless",
	output = "wool:white 1",
	recipe = {"cropocalypse:linen", "cropocalypse:linen", "cropocalypse:linen"}
})
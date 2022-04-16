-- Minecraft blocks in minetest.
local modpath = minetest.get_modpath("mcblocks")

dofile(modpath.."/stairs.lua")
dofile(modpath.."/walls.lua")


--Aliases
minetest.register_alias("andesite", "mcblocks:andesite")
--Nodes
minetest.register_node("mcblocks:andesite", {
	description = "Andesite",
	tiles = {"andesite.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("mcblocks:polished_andesite", {
	description = "Polished andesite",
	tiles = {"polished_andesite.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mcblocks:diorite", {
	description = "Diorite",
	tiles = {"diorite.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mcblocks:polished_diorite", {
	description = "Polished diorite",
	tiles = {"polished_diorite.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mcblocks:granite", {
	description = "Granite",
	tiles = {"granite.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mcblocks:polished_granite", {
	description = "Granite",
	tiles = {"polished_granite.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})


--Crafts
minetest.register_craft({
	type = shapeless,
	output = "mcblocks:andesite 4",
	recipe = {
		{"default:cobble", "default:stone"},
		{"default:stone", "default:cobble"},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "mcblocks:granite 4",
	recipe = {
		{"default:stone", "default:desert_stone"},
		{"default:desert_stone", "default:stone"},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "mcblocks:diorite 4",
	recipe = {
		{"default:stone", "default:silver_sandstone"},
		{"default:silver_sandstone", "default:stone"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "mcblocks:polished_granite",
	recipe = "mcblocks:granite"
})

minetest.register_craft({
	type = "cooking",
	output = "mcblocks:polished_diorite",
	recipe = "mcblocks:diorite"
})

minetest.register_craft({
	type = "cooking",
	output = "mcblocks:polished_andesite",
	recipe = "mcblocks:andesite"
})

print ("[MOD] MCBlocks by MenyeMC Loaded.")
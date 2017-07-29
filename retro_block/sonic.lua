minetest.register_node("retro_block:sonic_grass", {
	description = "Sonic 1 Grass",
	tile_images = {"sonic_grass_top.bmp", "sonic_dirt.bmp", "sonic_grass.bmp"},
	groups = {crumbly=3},
    on_place = minetest.rotate_node,
})

minetest.register_node("retro_block:sonic_dirt", {
	description = "Sonic 1 Dirt",
	tile_images = {"sonic_dirt.bmp" },
	groups = {crumbly=3},
})

minetest.register_node("retro_block:sonic_miniature", {
	description = "Sonic 1 Miniature",
	tile_images = {"sonic_miniature_top.bmp", "sonic_miniature_down.bmp", "sonic_miniature_side.bmp", "sonic_miniature_side.bmp", "sonic_miniature_back.bmp", "sonic_miniature_front.bmp" },
	groups = {crumbly=3},
	paramtype2 = "facedir",
})

minetest.register_node("retro_block:sonic_tiki", {
	description = "Sonic 1 Tiki",
	tile_images = {"sonic_tiki_side.bmp", "sonic_tiki_top.bmp", "sonic_tiki_front.bmp"},
	groups = {choppy=2,oddly_breakable_by_hand=2},
    paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = '"retro_block:sonic_grass" 99',
	recipe = {
		{'default:sand', 'default:sand', ''},
		{'default:dirt', 'default:dirt', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:sonic_dirt" 22',
	recipe = {
		{'default:dirt', 'default:dirt', ''},
		{'default:dirt', 'default:dirt', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:sonic_miniature" 1',
	recipe = {
		{'wool:blue', 'wool:white', ''},
		{'wool:blue', 'wool:blue', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:sonic_tiki" 10',
	recipe = {
		{'default:wood', 'dye:green', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
		}
})
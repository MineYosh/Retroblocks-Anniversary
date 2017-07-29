minetest.register_node("retro_block:kirby_miniature", {
	description = "Kirby Miniature",
	tile_images = {"kirby_miniature_side.bmp", "kirby_miniature_top.bmp", "kirby_miniature_front.bmp"},
	groups = {crumbly=1},
    paramtype2 = "facedir",
})

minetest.register_craft({
	output = '"retro_block:kirby_miniature" 1',
	recipe = {
		{'wool:pink', 'wool:white', ''},
		{'wool:pink', 'wool:pink', ''},
		{'', '', ''},
		}
})
minetest.register_node("retro_block:smb_brick", {
	description = "SMB Brick",
	tile_images = {"smb_brick.bmp"},
	groups = {cracky=3, stone=2},
})

minetest.register_node("retro_block:sm64_star", {
	description = "SM64 Star Block",
	tile_images = {"sm64_star.png"},
	groups = {crumbly=3},
})

minetest.register_node("retro_block:smb_cloud", {
	description = "SMB Cloud",
	tile_images = {"smb_clouds.png", "smb_clouds_top.png"},
	groups = {crumbly=1},
    on_place = minetest.rotate_node
})

minetest.register_node("retro_block:question_block", {
	description = "SMB Question Block",
	tiles = {
		{name="smb_question_block_top_animated.bmp", "smb_question_block_animated.bmp", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1,5}},
		},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[15,15]"..
				"list[current_name;main;0,4;9,5;]"..
				"list[current_player;main;0,10;8,4;]")
		meta:set_string("infotext", "SMB Question Block")
		local inv = meta:get_inventory()
		inv:set_size("main", 1*1)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_node("retro_block:yosho_block", {
	description = "Yosho Block",
	tile_images = {"yosho_block.png"},
	groups = {crumbly=3},
})

minetest.register_node("retro_block:smb_cobble", {

	description = "Smb Cobble",
	tile_images = {"smb_cobble.bmp" },
	groups = {cracky=3, stone=2},
})

minetest.register_node("retro_block:smb_castlebrick", {
	description = "SMB Castle Brick",
	tile_images = {"smb_castlebrick.bmp"},
	groups = {cracky=3, stone=2},
})

minetest.register_craft({
	output = '"retro_block:yosho_block" 1',
	recipe = {
		{'wool:white', '', ''},
		{'', 'wool:green', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:question_block" 1',
	recipe = {
		{'default:wood', 'retro_block:smb_brick', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:smb_cobble" 12',
	recipe = {
		{'default:cobble', 'default:cobble', ''},
		{'default:cobble', 'default:cobble', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:smb_castlebrick" 45',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble', ''},
		{'default:cobble', 'default:cobble', 'default:cobble', ''},
		{'default:cobble', 'default:cobble', 'default:cobble', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:smb_brick" 15',
	recipe = {
		{'default:brick', 'default:brick', 'default:brick', ''},
		{'default:brick', 'default:brick', 'default:brick', ''},
		{'default:brick', 'default:brick', 'default:brick', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:sm64_star" 3',
	recipe = {
		{'default:mese_block', 'default:mese_block', ''},
		{'default:mese_block', 'default:mese_block', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_block:smb_cloud" 17',
	recipe = {
		{'wool:white', 'wool:white', ''},
		{'wool:white', 'wool:white', ''},
		{'', '', ''},
		}
})
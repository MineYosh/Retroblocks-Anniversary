minetest.register_craftitem("retro_item:smb_mushroom", {
	description = "SMB Mushroom",
	inventory_image = "smb_mushroom.png",
	on_use = minetest.item_eat(20)
})

minetest.register_tool("retro_item:smb_fire_flower", {
	description = "SMB Fire Flower",
	inventory_image = "smb_fire_flower.png",
	liquids_pointable = false,
	stack_max = 1,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={flamable = {uses=500, maxlevel=1},
		}
	},
	on_use = function(itemstack, user, pointed_thing)
		local snow_ice_list = {"snow", "ice",}
	
			for _, which_one_is_it in pairs(snow_ice_list) do
				local snow_ice = which_one_is_it
	
				if pointed_thing.type == "node"					
					and not string.find(minetest.get_node(pointed_thing.under).name, "snow")
					and not string.find(minetest.get_node(pointed_thing.under).name, "ice")
					and minetest.get_node(pointed_thing.above).name == "air"
				then
					if not minetest.is_protected(pointed_thing.above, user:get_player_name()) then
						minetest.set_node(pointed_thing.above, {name="fire:basic_flame"})						
					else
						minetest.chat_send_player(user:get_player_name(), "You can't use your flower in someone's area")
					end
				elseif pointed_thing.type == "node"
					and string.find(minetest.get_node(pointed_thing.under).name,snow_ice)
					and minetest.get_node(pointed_thing.above).name == "air" then
						if not minetest.is_protected(pointed_thing.above, user:get_player_name()) then
							minetest.set_node(pointed_thing.above, {name="fire:basic_flame"})						
						else
							minetest.chat_send_player(user:get_player_name(), "You can't use your flower in someone's area")
						end
				end
			end
		
			minetest.sound_play("", {gain = 1.0, max_hear_distance = 2,})
			itemstack:add_wear(100535/100)
			return itemstack
	end
})

minetest.register_tool("retro_item:star", {
	description = "SMB Star",
	inventory_image = "star.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5000},
	}
})

dofile(minetest.get_modpath("retro_item") .. "/config.lua")
if racoon.fast == true then
    playereffects.register_effect_type("flyj", " Raccoon Time Avaible", "racoon.png", {"fly"},
        function(player)
            local playername = player:get_player_name()
            local privs = minetest.get_player_privs(playername)
            privs.fly = true
            privs.fast = true
            minetest.set_player_privs(playername, privs)
        end,
        function(effect, player)
            local privs = minetest.get_player_privs(effect.playername)
            privs.fly = nil
            privs.fast = nil
            minetest.set_player_privs(effect.playername, privs)
        end,
        false,
        false)
    else
        playereffects.register_effect_type("flyj", "Raccoon Power Avaible", "racoon.png", {"fly"},
            function(player)
                local playername = player:get_player_name()
                local privs = minetest.get_player_privs(playername)
                privs.fly = true
                minetest.set_player_privs(playername, privs)
            end,
            function(effect, player)
                local privs = minetest.get_player_privs(effect.playername)
                privs.fly = nil
                minetest.set_player_privs(effect.playername, privs)
            end,
            false,
            false)
end

minetest.register_craftitem("retro_item:racoon", {
    description = "SMB 3 Raccoon Leaf",
    inventory_image = "racoon.png",
    stack_max = 2,
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local privs = minetest.get_player_privs(playername)
        if privs.fly == true then
            minetest.chat_send_player(playername, "You already have The Raccoon power or flying privilege.")
        else
            playereffects.apply_effect_type("flyj", racoon.time, user)
            itemstack:take_item()
            return itemstack
        end
    end,
})

minetest.register_craft({
	output = '"retro_item:smb_mushroom" 1',
	recipe = {
		{'flowers:rose', 'flowers:rose', ''},
		{'flowers:rose', 'flowers:rose', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	output = '"retro_item:smb_fire_flower" 1',
	recipe = {
		{'flowers:dandelion_yellow', 'flowers:dandelion_yellow', ''},
		{'flowers:dandelion_white', 'flowers:dandelion_white', ''},
		{'', '', ''},
		}
})

minetest.register_craft({
	type = "fuel",
	recipe = "retro_item:smb_fire_flower",
	burntime = 2400,
})

minetest.register_craft({
	output = 'retro_item:racoon',
	recipe = {
		{'retro_item:smb_fire_flower', 'default:diamond', 'default:mese'},
		{'retro_item:smb_mushroom', 'retro_item:smb_mushroom', 'default:mese'},
	    {'default:diamond', 'default:diamond', 'default:diamond'},
	}
})


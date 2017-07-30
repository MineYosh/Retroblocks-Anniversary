mob_incompatibility = "I'm sorry to say this: \n But you have to disable your actual mobs mod or otherwise this mod won't work as expected and may have sudden crashes."

local itempath = minetest.get_modpath("retro_item")

if minetest.get_modpath("playereffects") then
	dofile(itempath.."/smb.lua")
	dofile(itempath.."/config.lua")
else 
	dofile(itempath.."/playereffects_api.lua")
	dofile(itempath.."/settings.lua")
	dofile(itempath.."/config.lua")
	dofile(itempath.."/smb.lua")
	
end

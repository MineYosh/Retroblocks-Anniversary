mob_incompatibility = "To assure the correct working of this mod we have to disable mobs since you have a mob API that is incompatible with our mod."

local mobpath = minetest.get_modpath("retro_mob")

if minetest.get_modpath("mobs") then
	print(mob_incompatibility)
elseif minetest.get_modpath("mila") then
	dofile(mobpath.."/settings.lua")
	dofile(mobpath.. "/yosho.lua") 
	dofile(mobpath.. "/spadedino.lua") 
	dofile(mobpath.. "/toaddo.lua") 
	dofile(mobpath.. "/bonesdry.lua") 
	dofile(mobpath.. "/blonky.lua") 
	dofile(mobpath.. "/clide.lua") 
	dofile(mobpath.. "/Onky.lua") 
	dofile(mobpath.. "/Pinkyo.lua") 
else
	dofile(mobpath.."/api.lua")
	dofile(mobpath.."/settings.lua")
	dofile(mobpath.. "/yosho.lua") 
	dofile(mobpath.. "/spadedino.lua") 
	dofile(mobpath.. "/toaddo.lua") 
	dofile(mobpath.. "/bonesdry.lua") 
	dofile(mobpath.. "/blonky.lua") 
	dofile(mobpath.. "/clide.lua") 
	dofile(mobpath.. "/Onky.lua") 
	dofile(mobpath.. "/Pinkyo.lua") 
end

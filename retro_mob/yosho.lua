local number_skin = math.random(1,5)

mila:add_entity("retro_mob:yosho", { 
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	textures = {"yosho_"..number_skin..".png"},
	status = "passive",
	mesh = "character.x",
	sounds = "yosho.ogg",
	
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	automatic_face_movement_dir = -90,
	hp_max = 14,
	speed = 2, 	
	stepheight = 2,
	view_range = 5,	
})

mila:add_egg("retro_mob:yosho", {
	description = "Yosho's Egg",
	inventory_image = "spawneggs_yosho.png",
	wield_image = "spawneggs_yosho.png",
})

mila:add_spawn("retro_mob:yosho", {
	nodenames = {"air"},
	neighbors = {"default:dirt_with_grass", "default:sand"},
	interval = 131,
	chance = 1000,
})
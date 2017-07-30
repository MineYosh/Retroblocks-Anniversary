mila:add_entity("retro_mob:toaddo_m", { 
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	textures = {"toaddo_male.png"},
	status = "passive",
	mesh = "character.x",
	
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	automatic_face_movement_dir = -90,
	hp_max = 5,
	speed = 2, 	
	stepheight = 2,
	view_range = 5,	
})


mila:add_spawn("retro_mob:toaddo_m", {
	nodenames = {"air"},
	neighbors = {"default:dirt_with_grass"},
	interval = 131,
	chance = 1000,
})



mila:add_entity("retro_mob:toaddo_b", { 
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	textures = {"baby_toaddo.png"},
	status = "passive",
	mesh = "character.x",
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	automatic_face_movement_dir = -90,
	hp_max = 2,
	speed = 1, 	
	stepheight = 2,
	view_range = 5,	
})


mila:add_spawn("retro_mob:toaddo_b", {
	nodenames = {"air"},
	neighbors = {"default:dirt_with_grass"},
	interval = 131,
	chance = 1000,
})

mila:add_entity("retro_mob:toaddo_f", { 
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	textures = {"toaddo_female.png"},
	status = "passive",
	mesh = "character.x",
	
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	automatic_face_movement_dir = -90,
	hp_max = 5,
	speed = 2, 	
	stepheight = 2,
	view_range = 5,	
})


mila:add_spawn("retro_mob:toaddo_f", {
	nodenames = {"air"},
	neighbors = {"default:dirt_with_grass"},
	interval = 131,
	chance = 1000,
})


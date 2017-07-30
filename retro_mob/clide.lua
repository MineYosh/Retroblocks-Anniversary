mila:add_entity("retro_mob:clide", { 
	damage = 50,
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	status = "hostile",
	visual_size = {x=1, y=1},
	mesh = "character.x",
	drops = "retro_mob:clide_egg",
	textures = {"clide.png"},
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	stepheight = 5,
	hp_max = 5000,
	speed = 1, 
	range = 3, 	
	view_range = 3,	
})

mila:add_egg("retro_mob:clide", {
	description = "Clide's Egg",
	inventory_image = "spawneggs_clide.png",
	wield_image = "spawneggs_clide.png",
})
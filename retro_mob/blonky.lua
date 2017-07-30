mila:add_entity("retro_mob:blonky", { 
	damage = 50,
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	status = "hostile",
	visual_size = {x=1, y=1},
	mesh = "character.x",
	drops = "retro_mob:blonky_egg",
	textures = {"blinky.png"},
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	stepheight = 5,
	hp_max = 5000,
	speed = 1, 
	range = 3, 	
	view_range = 3,	
})
  
mila:add_egg("retro_mob:blonky", {
	description = "Blonky's Egg",
	inventory_image = "spawneggs_blonky.png",
	wield_image = "spawneggs_blonky.png",
})
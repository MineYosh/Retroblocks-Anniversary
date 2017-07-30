mila:add_entity("retro_mob:spadedino", {
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	status = "shooter",
	visual_size = {x=1.2, y=1.2},
	visual = "mesh",
	mesh = "character.x",
	textures = {"spadedino.png"},
	drops = "retro_mob:spadedino 1",
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	hp_max = 30,
	speed = 3, 
	range = 2, 	
	stepheight = 2,
	view_range = 15,
	arrow = "retro_mob:spadedino_fire",
})

mila:add_egg("retro_mob:spadedino", {
	description = "Spadedino's Egg",
	inventory_image = "spadedinologo.png",
	wield_image = "spadedinologo.png",
})

mila:add_entity("retro_mob:spadedino_fire", {
	damage = 8,
	gravity = 1,
	status = "fireball",
	visual = "sprite",
	textures = {"mobs_fireball.png"},
	makes_footstep_sound = false,
	physical = false,		
	collide_with_objects = true,
	hp_max = 5,
	speed = 8,
	range = 20,
})

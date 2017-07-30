mila:add_entity("retro_mob:bones_dry", {
	damage = 2,
	collisionbox = { -0.3, -1.0, -0.3, 0.3, 0.8, 0.3 },
	status = "hostile",
	visual_size = {x=1.0, y=1.0},
	visual = "mesh",
	mesh = "character.x",
	textures = {"bones.png"},
	drops = "retro_mob:bones 1",
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	hp_max = 5000,
	speed = 2, 
	range = 15, 	
	stepheight = 1,
	view_range = 15,
	arrow = "retro_mob:spadedino_fire",
})


mila:add_spawn("retro_mob:bones_dry", {
	nodenames = {"air"},
	neighbors = {"default:lava", "default:stone"},
	interval = 131,
	chance = 1000,
})

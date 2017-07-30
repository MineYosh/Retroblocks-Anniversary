--M.I.L.A mob api. Made by azekill_diablo (https://github.com/azekillDIABLO/mila)


--[[	settings.lua
Welcome to the settings file,
where you can set different parameters for the mod!
This is a .lua file, so comment is needed.
]]

-- 1 for realistic blood, 2 for blood trail, 3 for the massive butchery (laggy) and 4 to disable:
mila.bleed_type = 4


-- 1 for nametag with health in numbers and internal name, 2 for health bar, 3 for coloured shape and 4 to disable:
mila.nametag = 2

--say true to active, other words are counted as false:
mila.egg = true --allow registering eggs
mila.spawning = true --make all mobs spawn
mila.break_blocks = true --break blocks on explosion
mila.peaceful = false --make all mobs passive

-- step counter for attack speed (0.5 is good)
mila.globalcounter = 0.2 --seconds

-- limit number of mobs active on map (50 is good)
mila.maxhandled = 40 --mobs

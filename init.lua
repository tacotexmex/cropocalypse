-- cropocalypse/init.lua

-- Loads The LUA Files For The Mod
-- Sorted The Code To Be A Little More Organized

local path = minetest.get_modpath("cropocalypse")
local S = core.get_translator("cropocalypse")

dofile(path .. "/crafting.lua")
dofile(path .. "/decorative_plants.lua")
dofile(path .. "/dyes.lua")
dofile(path .. "/glowing_mushrooms.lua")
dofile(path .. "/miscellaneous.lua")
dofile(path .. "/plants.lua")
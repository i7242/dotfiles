--[[
    This init.lua will search a dir named "lua"
    - script insid will be available as module
    - dir under it will be available as prefix of module
    - top level must be "lua", same level as this "init.lua"
--]]

-- Basic editor settings, won't be a lot
require("basics")

-- Customerized key maps
require("keymaps")

-- More advanced plugins, including themes
require("plugins")

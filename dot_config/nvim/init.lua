--[[
    This init.lua will search a dir named "lua"
    - script insid will be available as module
    - dir under it will be available as prefix of module
    - top level must be "lua", same level as this "init.lua"
--]]

-- Install Packer before load any other plugins & their configs
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Basic editor settings, won't be a lot
require("basics")

-- Customerized key maps for nvim
require("keymaps")

-- More advanced plugins, including themes
require("plugins")
require("plugin_config")

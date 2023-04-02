-- Use Packer to manage plugins

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- tree like nerdtree
  --   use Ctrl+n to switch
  --   use Ctrl+] to cd into a dir
  use 'kyazdani42/nvim-tree.lua'
  require("nvim-tree").setup({
      view = {
          adaptive_size = true
      }
  })

  -- toggleterm
  --   Ctrl+e will send visual selected code to default terminal
  --   this can be line selection or block selection
  use "akinsho/toggleterm.nvim"
  require("toggleterm").setup{
    open_mapping = [[<c-\>]],
    direction = 'float'
  }
  local options = {noremap = true}
  vim.api.nvim_set_keymap('v', '<C-e>', ':ToggleTermSendVisualSelection<CR>', options)

  -- for native lsp & key config
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'

  -- for Julia
  use 'JuliaEditorSupport/julia-vim'

  -- highlight interesting words
  --   use <leader>k to highlight current word
  use 'lfv89/vim-interestingwords'

  -- indent line, every 4 space, for manual formatting
  use 'yggdroot/indentline'

  -- startify, start screen
  use 'mhinz/vim-startify'

  -- Git integration
  use 'tpope/vim-fugitive'

  -- setup telescope for fuzzy find
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- colorscheme
  use 'cocopon/iceberg.vim'
  use 'sainnhe/vim-color-forest-night'

end)

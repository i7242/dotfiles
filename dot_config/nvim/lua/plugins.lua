-- Use Packer to manage plugins
return require('packer').startup(function()
  ------------------------------------------
  --            Packer Itself             --
  ------------------------------------------
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  ------------------------------------------
  --         General Core Plugins         --
  ------------------------------------------
  -- tree like nerdtree
  use 'kyazdani42/nvim-tree.lua'

  -- toggleterm
  use "akinsho/toggleterm.nvim"

  -- setup telescope for fuzzy find
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Git integration
  use 'tpope/vim-fugitive'

  ------------------------------------------
  --         LSP & Auto Completion        --
  ------------------------------------------
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- code auto complete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "folke/neodev.nvim"

  ------------------------------------------
  --           Language Specific          --
  ------------------------------------------
  -- for Julia
  use 'JuliaEditorSupport/julia-vim'

  ------------------------------------------
  --          Visual Improvements         --
  ------------------------------------------
  -- startify, start screen
  use 'mhinz/vim-startify'

  -- highlight interesting words
  --   by default, use <leader>k to highlight current word
  --   use <leader>K to remove all highlights
  use 'lfv89/vim-interestingwords'

  -- indent line, every 4 space, for manual formatting
  use 'yggdroot/indentline'

  -- colorscheme
  use 'cocopon/iceberg.vim'
  use 'sainnhe/everforest'
  use 'navarasu/onedark.nvim'
  use 'craftzdog/solarized-osaka.nvim'

  -- share code
  use {'krivahtoo/silicon.nvim', run = './install.sh'}
end)

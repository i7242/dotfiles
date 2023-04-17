-- Ctrl+\ will open a (new) float terminal
require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  direction = 'float'
}

-- Ctrl+e will send visual selected code to default terminal
-- this can be line selection or block selection
vim.api.nvim_set_keymap('v', '<C-e>', ':ToggleTermSendVisualSelection<CR>', {noremap = true})

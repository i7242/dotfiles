-- change the leader key to space
vim.g.mapleader = " "

-- copy to clipboard in normal, visual, select and operator modes
vim.api.nvim_set_keymap('', '<leader>y', '"+y', {})

-- quick move between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {})

-- quick indent format by "<" & ">"
vim.api.nvim_set_keymap('v', '<', '<gv', {})
vim.api.nvim_set_keymap('v', '>', '>gv', {})

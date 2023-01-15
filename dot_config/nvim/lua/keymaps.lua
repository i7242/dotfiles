-- Ref following blog:
-- https://oroques.dev/notes/neovim-init/#mappings

-- first a map() function to make mapping easy
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- test some mapping, copy to clipboard in normal, visual, select and operator modes
map('', '<leader>y', '"+y')

-- nvim tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- quick move between windows
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- quick indent format by "<" & ">"
map('v', '<', '<gv')
map('v', '>', '>gv')

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- for telescope keys
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')

-- this set up the jump to definition
--   seems not working with default recommended config format
--   this is based on youtube
--   with julials, seems only "gd" & "K" works now...
--     use Ctrl+o to jump backward
--     use Ctrl+i to jump foreward
vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> K  <cmd>lua vim.lsp.buf.hover()<CR>")

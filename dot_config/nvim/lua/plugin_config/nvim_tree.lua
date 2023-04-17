require("nvim-tree").setup({
    view = {
        adaptive_size = true
    }
})

-- use Ctrl+n to switch
-- use Ctrl+] to cd into a dir
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {})

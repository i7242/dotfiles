require("nvim-tree").setup({
    view = {
        adaptive_size = true
    }
})

-- use Ctrl+] to cd into a dir
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {})

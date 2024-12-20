return {
  {
    "Klafyvel/vim-slime-ext-neovim",
    dependencies = { "jpalardy/vim-slime-ext-plugins" },
    init = function()
      vim.g.slime_no_mappings = true -- I prefer to turn off default mappings; see below for more details
      -- these next two are essential, telling vim-slime-ext-plugins to use the functions from this plugin
      vim.g.slime_target_send = "slime_neovim#send"
      vim.g.slime_target_config = "slime_neovim#config"
      vim.g.slime_input_pid = false -- use Neovim's internal Job ID rather than PID to select a terminal
      vim.g.override_status = true -- Show the Job ID and PID in the status bar of a terminal
      vim.g.ruled_status = true -- If override_status is true, also show the cursor position in the status bar
    end,
    config = function()
      vim.keymap.set("n", "gz", "<Plug>SlimeMotionSend", { remap = true, silent = false })
      vim.keymap.set("n", "gzz", "<Plug>SlimeLineSend", { remap = true, silent = false })
      vim.keymap.set("x", "gz", "<Plug>SlimeRegionSend", { remap = true, silent = false })
    end,
  },
}

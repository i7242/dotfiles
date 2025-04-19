return {
  {
    "lfv89/vim-interestingwords",
    init = function()
      -- GUI colors (for GUI or truecolor terminal)
      vim.g.interestingWordsGUIColors = { "#8CCBEA", "#A4E57E", "#FFDB72", "#FF7272", "#FFB3FF", "#9999FF" }

      -- Terminal 256-color fallback
      vim.g.interestingWordsTermColors = { "154", "121", "211", "137", "214", "222" }
    end,
  },
}

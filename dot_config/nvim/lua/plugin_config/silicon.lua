require('silicon').setup({
 output = {
    -- (boolean) Whether to copy the image to clipboard instead of saving to file.
    clipboard = false,
    -- (string) Where to save images, defaults to the current directory.
    path = "/home/i7242/Pictures",
    -- (string) The filename format to use. Can include placeholders for date and time.
    format = "silicon_[year][month][day]_[hour][minute][second].png",
  },
  theme = 'Solarized (light)',
  pad_horiz = 10, -- (number) The horizontal padding.
  pad_vert = 10, -- (number) The vertical padding.
  background = '#900a65', -- (string) The background color for the screenshot.
  watermark = {
    text = 'i7242@nvim',
  }
})

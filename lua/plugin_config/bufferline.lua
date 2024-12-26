local bufferline = require("bufferline")
bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slope',
    always_show_bufferline = false,
    style_preset = bufferline.style_preset.no_bold,
    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
    },
    show_buffer_close_icons = false,
    show_close_icon = false,
    -- color_icons = true,
    modified_icon = '󰫣',
  },
})

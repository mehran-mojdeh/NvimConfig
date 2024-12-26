-- require('lualine').get_config()
-- require('lualine').setup()

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'sonokai',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }, 
--  section = {
--    lualine_a = {
--      {
--        'filename',
--        path = 1,
--      }
--    }
--  },
}
 

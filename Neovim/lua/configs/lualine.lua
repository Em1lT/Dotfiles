require('lualine').setup(
{
    options = {
        icons_enabled = true,
        theme = 'OceanicNext',
        component_separators = {},
        section_separators = {},
        disabled_filetypes = {}
        },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', {
          'filename',
          symbols = { modified = '[+]', readonly = '[-]', unnamed = '[No Name]', },
          file_status = true,
          path = 4,
        }},
        lualine_c = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {''},
        lualine_y = {'progress'},
        lualine_z = {'location'}
        },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{
          'filename',
          symbols = { modified = '[+]', readonly = '[-]', unnamed = '[No Name]', },
          file_status = true,
          path = 4,
        }},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
        },
    tabline = {},
    extensions = {}
})

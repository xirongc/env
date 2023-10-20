

                                        -- lualine --

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- local lualine = require("lualine")
        -- local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        local colors = {
            blue   = '#80a0ff',
            cyan   = '#79dac8',
            black  = '#080808',
            white  = '#c6c6c6',
            red    = '#ff5189',
            violet = '#cba6f7',
            grey   = '#313244',
            base = '#1e1e2e'
        }

        local my_theme = {
          normal = {
            a = { fg = colors.grey, bg = colors.violet },
            b = { fg = colors.white, bg = colors.grey },
            c = { fg = colors.base, bg = colors.base },
          },

          insert = { a = { fg = colors.base, bg = colors.blue } },
          visual = { a = { fg = colors.base, bg = colors.cyan } },
          replace = { a = { fg = colors.base, bg = colors.red } },

          inactive = {
            a = { fg = colors.white, bg = colors.base },
            b = { fg = colors.white, bg = colors.base },
            c = { fg = colors.black, bg = colors.base },
          },
        }

        require('lualine').setup {
          options = {
            theme = my_theme,
            component_separators = '|',
            section_separators = { left = '', right = '' },
          },
          sections = {
            lualine_a = {
              { 'mode', separator = { left = '' }, right_padding = 2 },
            },
            lualine_b = { 'filename', 'branch' },
            lualine_c = { 'fileformat' },
            lualine_x = {},
            -- lualine_y = { 'filetype', 'progress' },
            lualine_y = { 'filetype' },
            lualine_z = {
              { 'location', separator = { right = '' }, left_padding = 2 },
            },
          },
          inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
          },
          tabline = {},
          extensions = {},
        }



  end,
}


    -------------- catppuccin color theme --------------
	-- rosewater = "#f5e0dc",
	-- flamingo = "#f2cdcd",
	-- pink = "#f5c2e7",
	-- mauve = "#cba6f7",
	-- red = "#f38ba8",
	-- maroon = "#eba0ac",
	-- peach = "#fab387",
	-- yellow = "#f9e2af",
	-- green = "#a6e3a1",
	-- teal = "#94e2d5",
	-- sky = "#89dceb",
	-- sapphire = "#74c7ec",
	-- blue = "#89b4fa",
	-- lavender = "#b4befe",
	-- text = "#cdd6f4",
	-- subtext1 = "#bac2de",
	-- subtext0 = "#a6adc8",
	-- overlay2 = "#9399b2",
	-- overlay1 = "#7f849c",
	-- overlay0 = "#6c7086",
	-- surface2 = "#585b70",
	-- surface1 = "#45475a",
	-- surface0 = "#313244",
	-- base = "#1e1e2e",
	-- mantle = "#181825",
	-- crust = "#11111b",




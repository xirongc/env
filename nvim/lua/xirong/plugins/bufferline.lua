-- bufferline plugin --

return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",

    config = function()

        local colors = {
            blue   = '#80a0ff',
            cyan   = '#79dac8',
            black  = '#11111b',
            white  = '#c6c6c6',
            red    = '#ff5189',
            violet = '#cba6f7',
            grey   = '#313244',
            base = '#1e1e2e'
        }

        require('bufferline').setup{
            options = {
                -- mode = "tabs",           -- this setting keep all buffer in one tab
                -- separator_style = "slant", -- slope, thin, thick
                separator_style = "thin",
                indicator_icon = '-',
            },
            highlights = {
                separator = {
                    guifg = colors.black,
                    guibg = colors.black,
                },
                separator_selected = {
                    guifg = colors.black,
                    guibg = colors.black,
                },
                separator_visible = {
                    guifg = colors.black,
                    guibg = colors.black,
                },
            }
        }
        -- Optional keybinds
        -- vim.api.nvim_set_keymap('n', '<silent>[b', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
    end
}

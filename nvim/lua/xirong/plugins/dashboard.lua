
-- key binding display plugin --
-- custom header link: https://github.com/nvimdev/dashboard-nvim/wiki/Ascii-Header-Text

return {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup({
            theme = 'doom',
            config = {
                header = {
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '               ██            ██              ',
                    '                 ██ ▄▀▀▀▀▄ ██                ',
                    '                  ▄█▄▄▄▄▄▄█▄                 ',
                    '    ▀▀        ████▀▀▀▀██▀▀▀▀████        ▀▀   ',
                    '    ██    ████        ██        ████    ██   ',
                    '    ██████      ▄▄    ██    ▄▄      ██████   ',
                    '      ▄█▀▀      ▀▀    ██    ▀▀      ▀▀█▄     ',
                    '      ██              ██              ██     ',
                    '     ██      ▄█▄      ██      ▄█▄      ██    ',
                    ' █ ████    ▄█   █▄    ██    ▄█   █▄    ████ █',
                    '     ██     ▀▄▄▄▀     ██     ▀▄▄▄▀     ██    ',
                    '      ██      ▀       ██       ▀      ██     ',
                    '      ▀█▄▄            ██            ▄▄█▀     ',
                    '    ██████      ██    ██    ██      ██████   ',
                    '    ██   ▀▀▄▄▄        ██        ▄▄▄▀▀   ██   ',
                    '    ▄▄     ▀▀▀▄▄▄▄    ██    ▄▄▄▄▀▀▀     ▄▄   ',
                    '              ▀▀▀▀██████████▀▀▀▀             ',
                    '                                             ',
                    '                   Coolest?                  ',
                    '',
                    '',
                    '',
                    '',
                    '',
                },
                center = {
                  {
                    icon = '  ',
                    icon_hl = 'Title',
                    desc = 'Find File                                        ',
                    desc_hl = 'String',
                    key = 'f f',
                    key_hl = 'Number',
                    keymap = 'SPC ',
                    action = 'lua print(2)'
                  },
                  {
                    icon = '󱣱  ',
                    icon_hl = 'Title',
                    desc = 'Nav Buffer                                        ',
                    desc_hl = 'String',
                    key = 'Tab',
                    key_hl = 'Number',
                    keymap = 'S ',
                    action = 'lua print(2)'
                  },
                  {
                    icon = '  ',
                    icon_hl = 'Title',
                    desc = 'File Explorer                                        ',
                    desc_hl = 'String',
                    key = 'n',
                    key_hl = 'Number',
                    keymap = 'SPC ',
                    action = 'lua print(2)'
                  },
                  {
                    icon = '  ',
                    icon_hl = 'Title',
                    desc = 'MD Preview                                        ',
                    desc_hl = 'String',
                    key = 'm',
                    key_hl = 'Number',
                    keymap = 'SPC ',
                    action = 'lua print(2)'
                  },
                  {
                    icon = '󱀢  ',
                    icon_hl = 'Title',
                    desc = 'Comment                                        ',
                    desc_hl = 'String',
                    key = '/',
                    key_hl = 'Number',
                    keymap = 'SPC ',
                    action = 'lua print(2)'
                  },
                -- footer = {},
                },
            }
            -- week_header = {
            --     enable = true,
            -- },
        })
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}


-- █ ▄ ▀


---------------------------------------- doom ----------------------------------------

-- db.setup({
--   theme = 'doom',
--   config = {
--     header = {}, --your header
--     center = {
--       {
--         icon = ' ',
--         icon_hl = 'Title',
--         desc = 'Find File           ',
--         desc_hl = 'String',
--         key = 'b',
--         keymap = 'SPC f f',
--         key_hl = 'Number',
--         action = 'lua print(2)'
--       },
--       {
--         icon = ' ',
--         desc = 'Find Dotfiles',
--         key = 'f',
--         keymap = 'SPC f d',
--         action = 'lua print(3)'
--       },
--     },
--     footer = {}  --your footer
--   }
-- })


 -- buttons = {
                  -- { "  Find File", "Spc f f", "Telescope find_files" },
                  -- { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
                  -- { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
                  -- { "  Bookmarks", "Spc m a", "Telescope marks" },
                  -- { "  Themes", "Spc t h", "Telescope themes" },
                  -- { "  Mappings", "Spc c h", "NvCheatsheet" },
                -- },
                -- shortcut = {
                    -- { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                -- },



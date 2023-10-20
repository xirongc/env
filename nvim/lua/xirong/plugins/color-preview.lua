return {
    "norcalli/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()

        -- Initialize the plugin
        require('colorizer').setup()

        -- keybinding, not working, why
        -- local keymap = vim.keymap
        -- keymap.set('n', '<leader>pc', '<Plug>ColorizerToggle', { noremap = false, silent = true })

    end,
}



-- comment.lua -- 
-- NvChad use the api to achieve <leader>/ for gcc and gc command at the same time 
-- I don't have to achieve that, so use alacritty for now 
-- <leader>/ for commenting out single line | command / for commenting out multiple lines

-- comment.lua -- 
local function comment_nvim()
    local comment = require('Comment')
    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    comment.setup({
        padding = true,
        sticky = false,
        ignore = '^$',
        toggler = {
            line = '<leader>/',   -- keybinding for comment out lines
            block = 'gbc',
        },
        mappings = {
            basic = true,
            extra = false,
        },
        pre_hook = function(ctx)
            -- Custom logic here
            ts_context_commentstring.create_pre_hook()(ctx)
        end,
        post_hook = function(ctx)
            -- Custom logic here
        end,
    })

    -- API-based Key Mapping 
    vim.api.nvim_set_keymap('n', 'C-m', [[<Cmd>lua require("Comment.api").toggle.linewise('n')<CR>]], { noremap = true })
    vim.api.nvim_set_keymap('x', 'C-m', [[<Cmd>lua require("Comment.api").toggle.linewise('V')<CR>]], { noremap = true })

end

-- return the plugin --
return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = comment_nvim
}



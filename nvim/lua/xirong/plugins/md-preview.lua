
-- markdown file preview plugin -

return {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    run = "cd app && npm install",
    config = function()
        vim.g.mkdp_filetypes = { "markdown" }

        -- keybinding
        local keymap = vim.keymap
        keymap.set('n', '<leader>m', '<Plug>MarkdownPreview', { noremap = false, silent = true })
        keymap.set('n', '<leader>mm', '<Plug>MarkdownPreviewStop', { noremap = false, silent = true })

    end,
}

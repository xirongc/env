
                                                -- File Explorer Configuration --
return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- configuration 
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- change color for arrows in tree to light blue
        vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

        -- configure nvim-tree
        nvimtree.setup({
            view = {
                width = 35,
            },
            -- change folder arrow icons
            renderer = {
                root_folder_label = true,
                icons = {
                    glyphs = {
                        default = "󰈚",
                        symlink = "",
                        folder = {
                          default = "",
                          empty = "",
                          empty_open = "",
                          open = "",
                          symlink = "",
                          symlink_open = "",
                          arrow_open = "",
                          arrow_closed = "",
                        },
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "?",
                            deleted = "",
                            ignored = "◌",
                        },
                    },
                },
            },
            open_on_tab = true,
            actions = {
                open_file = {
                    window_picker = {
                        enable = true,
                    },
                },
            },
            filters = {
                custom = { ".DS_Store" },   -- ignore the file you don't want to display in file explorer
            },
        })

    -- vim.g.nvim_tree_bindings = {
    --   { key = "<CR>", cb = ":tabnew<CR>:NvimTreeFindFile<CR>" },
    -- }

    -- set keymaps
    -- only when nvim-tree.lua load, this keymaps will execute
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<CR>", ":tabnew<CR>:NvimTreeFindFile<CR>", { desc = "open file with <Enter> key" }) -- toggle file explorer

    --keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    --keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    --keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

  end,
}





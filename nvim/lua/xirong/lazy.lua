
                                    -- from official repo, boottrap lazy.nvim --

----------------------------------------------------------------------------------------------------------------
-- | return it, i assume                                                                                    | --
-- | the table {} passed into the require function means what you want to load for lazy.nvim                | --
-- | to further configure the plugins you loaded, pass a table containing the plugins and its config        | --
-- | {                                                                                                      | --
-- |	"xxx/yyyy",                                                                                         | --
-- |	property_1 =,                                                                                       | --
-- |	config = function()                                                                                 | --
-- |	    vim.cmd([[]])                                                                                   | --
-- |	end,                                                                                                | --
-- | },                                                                                                     | --
-- | check lazy.nvim README.md for list of properties you can use, call "Plugin Spec" or :h lazy.nvim       | --
-- | e.g. require("lazy").setup({{plugin_1}, {plugin_2}, etc})                                              | --
-- | but manage this require statement, to make it clean, we could add all configuration file of specific   | --
-- | plugins into separated .lua file under nvim/lua/xirong/plugins/                                        | --
----------------------------------------------------------------------------------------------------------------


-- Install missing plugins :Lazy install 
-- Clean up plugins that no longer used :Lazy clear
-- Run install, clean and update :Lazy sync


-- boottrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



-- lazy will automatically load directory inside plugins/, so you need to mannually tell it
require("lazy").setup({
    { import = "xirong.plugins" },
    { import = "xirong.plugins.lsp" }   -- mannually tell it to import lsp/, because nested/subdirectories won't be load automatical
}, {
    install = {
        colorscheme = { "catppuccin" }, -- let lazy to load colorscheme 
                                        -- whenever it trying to install new plugins at startup
    },
    checker = {
        enabled = true,     -- lazy is automatically checking updates
        notify = false,     -- but don't need to notify me
    },
    change_detection = {
        notify = false,     -- whenever you make changes to config, lazy notice it but don't need to notify me
    },
})



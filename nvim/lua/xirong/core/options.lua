
----------------------------------------------------------------------------------------------------|
--                                                                                                  |
-- reference:                                                                                       |
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/                         |
-- https://www.notonlycode.org/neovim-lua-config/                                                   |
-- :help options                                                                                    |
-- Scope (set variable for option)                                                                  |
--                                                                                                  |
----------------------------------------------------------------------------------------------------|
--                                                                                                  |
-- from vimscript to lua                                                                            |
-- vim.o:  gets or sets general settings                                                            |
-- vim.wo: ~ window-scoped options                                                                  |
-- vim.bo: ~ buffer-scoped options                                                                  |
-- vim.g:  ~ global variables => usually namespace where you'll find variables set by plugins       |
-- vimscript:   let g:zoom#statustext = 'Z'                                                         |
--              set guicursor=n-c-v:hor20,i:ver10                                                   |
-- lua:         vim.g['zoom#statustext'] = 'Z'                                                      |
--              opt.guicursor='n-c-v:hor20,i:ver10'                                                 |
--                                                                                                  |
----------------------------------------------------------------------------------------------------|

-- ===================================== general setting ============================================
-- for conciseness: access vim global variable, using vim.opt for setting option
local opt = vim.opt

-- line numbers
opt.relativenumber = true               -- show relative line numbers
opt.number = true                       -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4                         -- spaces for tabs (prettier default)
opt.shiftwidth = 4                      -- spaces for indent width
opt.expandtab = true                    -- expand tab to spaces
opt.autoindent = true                   -- copy indent from current line when starting new one
-- override the tabstop for astro, html, css, javascript files, set to 3
vim.cmd [[
  augroup my_filetypes
    autocmd!
    autocmd FileType astro setlocal shiftwidth=3 tabstop=3
    autocmd FileType javascript setlocal shiftwidth=3 tabstop=3
    autocmd FileType css setlocal shiftwidth=3 tabstop=3
    autocmd FileType html setlocal shiftwidth=3 tabstop=3
  augroup END
]]



-- line wrapping
opt.wrap = true                         -- enable line wrapping: see lines when reszie windows
opt.linebreak = true                    -- Wrap lines at convenient points (keep word/line consistent)

-- search settings
opt.ignorecase = true                   -- ignore case when searching
opt.smartcase = true                    -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor shape 
-- normal mode: block, insert mode: horizontal, visual mode: block
opt.guicursor='n-v-c-sm:block,i-ci-ve:hor20,r-cr-o:block'
-- cursor line
opt.cursorline = true                   -- highlight the current cursor line

-- appearance
-- turn on termguicolors for certain colorscheme to work, use alacritty
opt.termguicolors = true
opt.background = "dark"                 -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"                  -- show sign column so that text doesn't shift

-- backspace, don't worry about this, I don't know either
opt.backspace = "indent,eol,start"      -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- when "yy", you are able to cmd+v paste to outside of neovim
opt.clipboard:append("unnamedplus")     -- use system clipboard as default register

-- recognize "-" for connecting words 
-- semi-colon is a single string instead of three, ctrl+w will delete them all  
opt.iskeyword:append("-")

-- split windows
opt.splitright = true                   -- split vertical window to the right
opt.splitbelow = true                   -- split horizontal window to the bottom

-- turn off swapfile, no idea
opt.swapfile = false




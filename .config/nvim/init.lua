-- ############################################################
-- ############################################################
--
--           __             __    ____  __    
--   _______/  |_ _____   _/  |_ /_   ||  | __
--  /  ___/\   __\\__  \  \   __\ |   ||  |/ /
--  \___ \  |  |   / __ \_ |  |   |   ||    < 
-- /____  > |__|  (____  / |__|   |___||__|_ \
--      \/             \/                   \/
--
-- This is the custom configuration file
-- for NeoVim.
--
-- ############################################################
-- ############################################################


---------------------------------------------------------------
-- COMMON SETTINGS
---------------------------------------------------------------

-- First off all let's configure basic NeoVim options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.encoding = "UTF-8"
vim.opt.mouse = "a"

---------------------------------------------------------------
-- PLUGINS
---------------------------------------------------------------

-- Ok, let's add some plugins for our IDE
-- Alias for convinient Vimscript typed plugin assign
local Plug = vim.fn['plug#']

-- Define custom path to our plugin installation folder
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'											-- Status bar
Plug 'preservim/nerdtree'														-- File tree
Plug 'ap/vim-css-color'															-- CSS Color scheme
Plug 'rafi/awesome-vim-colorschemes'								-- Retro Scheme
Plug 'ryanoasis/vim-devicons'												-- Developer icons
Plug 'preservim/tagbar'															-- Tagbar for code navigation
Plug ('neoclide/coc.nvim', {branch = 'release'})		-- Auto-completion
Plug 'jiangmiao/auto-pairs'													-- Auto pairs
Plug 'tpope/vim-surround'														-- Surrounding expressions by `ysw`
Plug 'tpope/vim-commentary'													-- Commenting by `gcc` or `gc`
Plug 'neovim/nvim-lspconfig'												-- Language Server Protocol config
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'nvim-lua/plenary.nvim'
Plug 'bmatcuk/stylelint-lsp'

vim.call('plug#end')

---------------------------------------------------------------
-- APPEARANCE 
---------------------------------------------------------------

-- Let's setup our Vim appereance
vim.cmd ':colorscheme gruvbox'
vim.cmd 'autocmd VimEnter * hi Normal ctermbg=none'

---------------------------------------------------------------
-- IMPORTS
---------------------------------------------------------------

require('keybinds')
require('lsp')

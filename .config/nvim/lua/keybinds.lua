-- ############################################################
-- ############################################################
--
-- This file contains keybinds mappings for NeoVim
--
-- ############################################################
-- ############################################################

---------------------------------------------------------------
-- KEYBIND MAP FUNCTION
---------------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

---------------------------------------------------------------
-- SHORTCUTS
---------------------------------------------------------------

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

---------------------------------------------------------------
-- APPLICATIONS AND PLUGINS SHORTCUTS
---------------------------------------------------------------

-- NvimTree
map('n', '<C-n>', ':NERDTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NERDTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NERDTreeFindFile<CR>')      -- search file

-- COC autocompletion
vim.cmd([[
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

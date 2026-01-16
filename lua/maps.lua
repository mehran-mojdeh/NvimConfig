local keymap = vim.keymap

-- Leader key
vim.g.mapleader = ' ' -- Space

-- Toggle word wrap
keymap.set('n', '<C-w>', ':set wrap!<CR>', { noremap = true, silent = true })

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decerement
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

--Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- New tab
keymap.set('n', '<Leader><tab>', ':tabedit<Return>', { silent = true })
keymap.set('n', '<tab>', ':tabnext<Return>')
keymap.set('n', '<C-]>', ':tabnext<Return>')
keymap.set('n', '<C-[>', ':tabprevious<Return>')
-- Split window
keymap.set('n', '<Leader>h', ':split<Return><C-w>w', { silent = true })
keymap.set('n', '<Leader>v', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
--keymap.set('n', '<Leader><tab>', '<C-w>w')
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-l>', '<C-w>l')

-- Resize window
keymap.set('n', '<C-left>', '<C-w><')
keymap.set('n', '<C-right>', '<C-w>>')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- Nvim Tree
keymap.set('n', '<Leader>l', ':NvimTreeFindFileToggle<CR>')

-- Telescope
local teles = require('telescope.builtin')
keymap.set('n', '<Leader>ff', teles.find_files, {})
keymap.set('n', '<Leader>fh', teles.oldfiles, {})
keymap.set('n', '<Leader>w', teles.live_grep, {})
keymap.set('n', '<Leader>b', teles.buffers, {})
keymap.set('n', '<Leader>r', teles.resume, {})

-- Open command-line
keymap.set('n', '<Leader>t', ':terminal<Return>')
keymap.set('t', '<esc><esc>', '<C-\\><C-n>')

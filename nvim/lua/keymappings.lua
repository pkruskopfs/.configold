-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Remap space as the leader key
keymap('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' ' 

-- no highlighting
keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)

-- NvimTreeToggle set to leader e
keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- better window movement
keymap('n', '<C-h>', '<C-w>h', term_opts)
keymap('n', '<C-j>', '<C-w>j', term_opts)
keymap('n', '<C-k>', '<C-w>k', term_opts)
keymap('n', '<C-l>', '<C-w>l', term_opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- shift > and shift < after highlighting in visual mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- don't use escape
keymap('i', 'jk', '<ESC>', opts)
keymap('i', 'kj', '<ESC>', opts)

-- tab switch buffer
keymap('n', '<TAB>', ':bnext<CR>', opts)
keymap('n', '<S-TAB>', ':bprevious<CR>', opts)

-- telescope mapping
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<Leader>fm', ':Telescope media_files<CR>', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)



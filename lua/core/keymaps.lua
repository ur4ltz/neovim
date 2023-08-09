local keymap = vim.keymap.set

local n_opts = { silent = true, noremap = true }
local t_opts = { silent = true }

keymap('n', '<leader>`', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
keymap('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save File' })
keymap('n', '<leader>q', '<cmd>quit<cr>', { desc = 'Quit' })
keymap('n', '<leader>Q', '<cmd>quitall<cr>', { desc = 'Quit All' })
keymap('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { desc = 'Undotree: Toggle' })

-- Better window navigation
keymap('n', '<C-Left>', '<C-w>h', n_opts)
keymap('n', '<C-Down>', '<C-w>j', n_opts)
keymap('n', '<C-Up>', '<C-w>k', n_opts)
keymap('n', '<C-Right>', '<C-w>l', n_opts)

keymap('t', '<esc>', '<C-\\><C-N>', t_opts)
keymap('t', '<C-Left>', '<C-\\><C-N><C-w>h', t_opts)
keymap('t', '<C-Down>', '<C-\\><C-N><C-w>j', t_opts)
keymap('t', '<C-Up>', '<C-\\><C-N><C-w>k', t_opts)
keymap('t', '<C-Right>', '<C-\\><C-N><C-w>l', t_opts)
keymap('t', '<C-w>', '<C-\\><C-N><C-w>', t_opts)

-- Use Ctrl+Shift + 'Down Up Left Right' to move window
keymap('n', '<C-S-Left>', '<C-w>H', n_opts)
keymap('n', '<C-S-Down>', '<C-w>J', n_opts)
keymap('n', '<C-S-Up>', '<C-w>K', n_opts)
keymap('n', '<C-S-Right>', '<C-w>L', n_opts)

-- Use alt + 'Down Up Left Right' to resize window
keymap('n', '<M-Down>', '<cmd>resize -2<CR>', n_opts)
keymap('n', '<M-Up>', '<cmd>resize +2<CR>', n_opts)
keymap('n', '<M-Left>', '<cmd>vertical resize -2<CR>', n_opts)
keymap('n', '<M-Right>', '<cmd>vertical resize +2<CR>', n_opts)

-- Move line Up / Down
keymap('n', '<M-j>', ':m .+1<CR>==', n_opts)
keymap('n', '<M-k>', ':m .-2<CR>==', n_opts)

keymap('x', '<M-j>', ":move '>+1<CR>gv-gv", n_opts)
keymap('x', '<M-k>', ":move '<-2<CR>gv-gv", n_opts)

-- Stay in indent mode
-- Visual mode
keymap('v', '<', '<gv', n_opts)
keymap('v', '>', '>gv', n_opts)
-- Normal mode
keymap('n', '<', '<<', n_opts)
keymap('n', '>', '>>', n_opts)

-- Center when X
keymap('n', 'n', 'nzzzv', n_opts)
keymap('n', 'N', 'Nzzzv', n_opts)

-- Copy selected text to clipboard
-- keymap('v', '<leader>y', ':w !termux-clipboard-set<CR><CR>', n_opts)

-- Paste text from clipboard
-- keymap('n', '<leader>p', ':r !termux-clipboard-get<CR>', n_opts)



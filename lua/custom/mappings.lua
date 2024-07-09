-- General Key Mappings


-- New Key Mappings for Yank and Paste
-- Map 'y' to yank into register 'a'
vim.keymap.set('n', 'y', '"ay', { desc = 'Yank to register a' })
vim.keymap.set('v', 'y', '"ay', { desc = 'Yank to register a' })

-- Map ',' to paste from register 'a'
vim.keymap.set('n', ',', '"ap', { desc = 'Paste from register a' })
vim.keymap.set('v', ',', '"ap', { desc = 'Paste from register a' })


-- Map 'P' to paste from register 'a' before the cursor
vim.keymap.set('n', 'P', '"aP', { desc = 'Paste from register a before the cursor' })
vim.keymap.set('v', 'P', '"aP', { desc = 'Paste from register a before the cursor' })



-- Map '<' to paste from register 'a' before the cursor
--vim.keymap.set('n', 'P', '"aP', { desc = 'Paste from register a before the cursor' })
--vim.keymap.set('v', 'P', '"aP', { desc = 'Paste from register a before the cursor' })


vim.keymap.set('x', 'p', 'p:let @+=@0<CR>:let @"=@0<CR>', { silent = true, desc = 'Dont copy replaced text' })
vim.keymap.set('n', '<leader>ln', '<cmd>set nu!<CR>', { desc = 'Toggle line number' })
vim.keymap.set('n', '<leader>lr', '<cmd>set rnu!<CR>', { desc = 'Toggle relative number' })

vim.keymap.set('', 'j', 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, desc = 'Move down' })
vim.keymap.set('', 'k', 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, desc = 'Move up' })
vim.keymap.set('', '<Up>', 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, desc = 'Move up' })
vim.keymap.set('', '<Down>', 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, desc = 'Move down' })
vim.keymap.set('n', '<leader>ch', '<cmd>NvCheatsheet<CR>', { desc = 'Mapping cheatsheet' })

-- Tmux navigation (ensure Tmux and Neovim integration is correctly configured)
vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', { desc = 'window left' })
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', { desc = 'window right' })
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', { desc = 'window down' })
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', { desc = 'window up' })
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { desc = 'cd to current file' })

-- Fugitive Plugin Key Mappings
vim.keymap.set('n', '<leader>gc', '<cmd>Git commit -a<CR>', { desc = 'Git commit -a' })
vim.keymap.set('n', '<leader>gd', '<cmd>Git diff<CR>', { desc = 'Git diff' })
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>', { desc = 'Git blame' })
vim.keymap.set('n', '<leader>gp', '<cmd>Git push<CR>', { desc = 'Git push' })
vim.keymap.set('n', '<leader>gl', '<cmd>Git pull<CR>', { desc = 'Git pull' })
vim.keymap.set('n', '<leader>ga', '<cmd>Git add -A<CR>', { desc = 'Git add -A' })
vim.keymap.set('n', '<leader>gs', '<cmd>Git status<CR>', { desc = 'Git status' })

-- Toggle in terminal mode
vim.keymap.set('t', '<A-i>', function()
  require('nvterm.terminal').toggle 'float'
end, { desc = 'Toggle floating term' })

vim.keymap.set('t', '<A-h>', function()
  require('nvterm.terminal').toggle 'horizontal'
end, { desc = 'Toggle horizontal term' })

vim.keymap.set('t', '<A-v>', function()
  require('nvterm.terminal').toggle 'vertical'
end, { desc = 'Toggle vertical term' })

-- Toggle in normal mode
vim.keymap.set('n', '<A-i>', function()
  require('nvterm.terminal').toggle 'float'
end, { desc = 'Toggle floating term' })

vim.keymap.set('n', '<A-h>', function()
  require('nvterm.terminal').toggle 'horizontal'
end, { desc = 'Toggle horizontal term' })

vim.keymap.set('n', '<A-v>', function()
  require('nvterm.terminal').toggle 'vertical'
end, { desc = 'Toggle vertical term' })

-- Neotree mappings
-- Open Neo-tree file tree with Ctrl+n using the :Neotree command
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = 'Open Neo-tree file tree' })
vim.keymap.set('n', '<leader>nt', ':Neotree focus<CR>', { noremap = true, silent = true, desc = 'Focus Neo-tree file tree' })

-- Go to the next buffer with Shift+Tab
vim.keymap.set('n', '<S-Tab>', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<leader>nb', '<cmd>enew<CR>', { desc = 'New buffer' })

-- Bufferline mappings
-- Close current buffer with <leader>x
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Close current buffer' })

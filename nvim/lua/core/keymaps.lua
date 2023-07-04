vim.g.mapleader = ' '

vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.wo.number = true

vim.keymap.set('n', '<leader>t', ':Gitsigns toggle_current_line_blame<CR>')
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

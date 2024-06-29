-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.o.swapfile = false

vim.opt.scrolloff = 20

vim.opt.wrap = false

vim.opt.ph = 15

vim.opt.cursorcolumn = false
-- Show which line your cursor is on
vim.opt.cursorline = false

-- [[ Basic Keymaps ]]
vim.keymap.set('n', '<Leader>dc', ':bwipeout<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>db', ':%bd|e#|bd#<cr>|\'"<CR>', { noremap = true, silent = true })

vim.keymap.set('n', ',w', ':w<CR>', { silent = true })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

return {}

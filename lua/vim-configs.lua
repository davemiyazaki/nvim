vim.cmd("set expandtab") 
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2") 
vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("set clipboard=unnamed")
-- Map a shortcut to open the picker.
vim.api.nvim_set_keymap("n", "<Leader><Leader>",
  [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', "<Leader>n",':e ~/AppData/Local/nvim/init.lua<CR>', {noremap = true})  

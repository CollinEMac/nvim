vim.g.mapleader = ' '

require('mvra/telescope')
require('gitsigns').setup{
    current_line_blame=true
}
require'lspconfig'.pyright.setup{}
require'lspconfig'.ts_ls.setup{}

vim.keymap.set('n', '<leader>p', require('telescope.builtin').find_files, { desc = 'Search files (like CTRL+P)' })
vim.keymap.set('n', '<leader>f', require('telescope.builtin').live_grep , { desc = 'Live grep (like CTRL+SHIFT+F)' })
vim.keymap.set('n', '<leader>o', require('telescope.builtin').oldfiles , { desc = 'Old files (previously opened)' })

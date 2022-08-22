-- map jk to Esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})

-- bind leader+f to format the current file with whatever formatter is set
vim.api.nvim_set_keymap('n', '<Leader>f', ':call CocAction("format")<CR>', {})

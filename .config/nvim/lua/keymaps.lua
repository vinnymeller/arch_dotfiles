-- map jk to Esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})

-- bind leader to space
--vim.api.nvim_set_keymap('n', ' ', '<Leader>', {noremap = true})
vim.g.mapleader = ' '

-- bind leader+f to format the current file with whatever formatter is set
vim.api.nvim_set_keymap('n', '<Leader>fmt', ':call CocAction("format")<CR>', {})

-- how the fuck do i convert this to lua?
vim.api.nvim_command [[ inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" ]]

-- telescope maps
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gitc', '<cmd>lua require("telescope.builtin").git_commits()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gitf', '<cmd>lua require("telescope.builtin").git_files()<CR>', {})

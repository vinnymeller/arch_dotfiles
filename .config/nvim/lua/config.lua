-- color scheme setup
vim.g.catpuccin_flavour = "frappe"
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]


-- nvim-tree setup
-- uses defaults so far, TODO: explore this further
require("nvim-tree").setup({
  open_on_setup = true,
  open_file = {
	  window_picker = {
		  enable = false
	  }
  },
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  filters = {
    dotfiles = false,
  },
})
require("nvim-tree").open_replacing_current_buffer()

-- configure status bar
require('feline').setup()

-- basic neovim setup
vim.cmd [[set number]]
vim.cmd [[set relativenumber]]

-- autoload files on change
vim.cmd [[set autoread]]
vim.cmd [[au CursorHold * checktime]]

-- autocmd to format the file every time before saving
vim.api.nvim_command [[autocmd BufWritePre * silent! call CocAction("format") ]]

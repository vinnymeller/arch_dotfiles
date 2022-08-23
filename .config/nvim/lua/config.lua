-- color scheme setup
vim.g.catpuccin_flavour = "frappe"
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]


-- nvim-tree setup
-- uses defaults so far, TODO: explore this further
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  filters = {
    dotfiles = false,
  },
})

-- primagen refactoring setup
require('refactoring').setup({})
require("git-worktree").setup({
    autopush = true -- default: false,
})

require("telescope").load_extension("git_worktree")

-- configure status bar
require('feline').setup()

-- neogit setup
require("neogit").setup({
    integrations = {
        diffview = true,
    },
})

-- diffview setup
require("diffview").setup({})


-- autocmd to format the file every time before saving
-- i dont actually like always autosaving
--vim.api.nvim_command [[autocmd BufWritePre * silent! call CocAction("format") ]]

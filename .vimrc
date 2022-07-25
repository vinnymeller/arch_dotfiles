" jk as a replacement for escape
inoremap jk <Esc>


syntax on
set number

" autoload files if they change on disk
set autoread                                                                                                                                                                                    
au CursorHold * checktime

" nerdtree open file in a new tab by default
let NERDTreeOpenFileInNewWindow = '<Enter>'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" vim-plug plugin management

call plug#begin("~/.config/nvim/plugged")

Plug 'nvim-treesitter/nvim-treesitter' " better syntax highlighting
Plug 'nvim-lua/plenary.nvim' " idk what this one was
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder
Plug 'preservim/nerdtree' " file explorer
Plug 'github/copilot.vim' " copilot baby
Plug 'editorconfig/editorconfig-vim' " configure nvim editor
Plug 'Pocco81/AutoSave.nvim' " auto save
Plug 'tpope/vim-obsession' " saves state of vim/nvim to enable reloading automatically
Plug 'mileszs/ack.vim' " fast search with ack

call plug#end()

let g:ackprg = 'ag --nogroup --nocolor --column' " ag search program

" Pocco81/AutoSave.nvim config, only autosave py files
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
	    filetype_is = {"py"},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF

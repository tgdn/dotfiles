set nocompatible
"set number
set relativenumber
set cursorline
set mouse=a
set nowrap
set encoding=utf-8
set t_Co=256
set ic
set ruler

syntax on
filetype on
filetype plugin on
filetype indent on

set cindent
set smartindent
set autoindent " 'smart' indenting

set backup                      " keep a backup file
set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode

set expandtab " spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

color dracula

"colorscheme up 

" Leave editor with Ctrl-q : Write all changed buffers and exit Vim
nmap <C-q>     :wqa<CR>

" autocomplete parenthesis, brackets and braces
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"
"vnoremap ( s()<Esc>P<Right>%
"vnoremap [ s[]<Esc>P<Right>%
"vnoremap { s{}<Esc>P<Right>%

" autocoplete quotes (visual and select mode)
xnoremap ' s''<Esc>P<Right>
xnoremap " s""<Esc>P<Right>
xnoremap ` s``<Esc>P<Right>

" Change the working directory to the directory containing the current file
if has("autocmd")
    autocmd BufEnter * :lchdir %:p:h
endif " has("autocmd")

" Airline
set laststatus=2
set ttimeoutlen=50

let g:airline_powerline_fonts = 1

call plug#begin()
Plug 'vim-airline/vim-airline'
call plug#end()

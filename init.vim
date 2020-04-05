""""""""""""""""""""""""""
"Plugin manager infection"
""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

if executable('ctags')
    Plug 'ludovicchabant/vim-gutentags'
endif

call plug#end()

""""""""""""""""""""""""""
""""""""""Python""""""""""
""""""""""""""""""""""""""

"setting python executables path
let g:python_host_prog="/home/louis/.pyenv/versions/nvim2/bin/python"
let g:python3_host_prog="/home/louis/.pyenv/versions/nvim/bin/python"

if !empty($VIRTUAL_ENV)
    let g:python3_host_prog=$VIRTUAL_ENV."/bin/python"
endif



""""""""""""""""""""""""""
"""""""""""Style""""""""""
""""""""""""""""""""""""""

"color scheme
set bg=dark
colorscheme gruvbox

syntax enable "enable syntax processing
set tabstop=4 "visual spaces par TAB

filetype indent on  "load indents specific to file types
set shiftwidth=4    "set autoindent size
set softtabstop=4   "number of spaces inserted when TAB is hit
set expandtab       "tabs are spaces
set relativenumber  "show relative line numbers
set showcmd         "show command at bottom
set laststatus=2    "always show status bar
set noshowmode      "don't show current mode
set cursorline      "highlight current line

""""""""""""""""""""""""
"""""""Utilities""""""""
""""""""""""""""""""""""

"turn off backups
set nobackup
set nowb
set noswapfile

set wildmenu        "command autocomplete
set lazyredraw      "redraw screen only when needed
set showmatch       "show matching (, { and [

filetype plugin indent on "set filetype
set omnifunc=syntaxcomplete#Complete

set notagrelative       "set fileneme not relative to tag directory
set tags+=./.git/tags   "set tag path 


""""""""""""""""""""""""
""""""""Searching"""""""
""""""""""""""""""""""""

set incsearch       "incremental search
set hlsearch        "highlight search
set ignorecase      "set case insensitive
set smartcase       "sensitive when capital in search

""""""""""""""""""""""""
""""""""Bindings""""""""
""""""""""""""""""""""""

let mapleader=","

inoremap " ""<left>
inoremap ' ''<left>
nnoremap <S-Tab> :YcmCompleter GetDoc<CR><C-w><up>
inoremap <S-Tab> :YcmCompleter GetDoc<CR><C-w><up>

nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap <up> <Nop>
nnoremap <down> <Nop>

inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>
inoremap <down> <Nop>

nnoremap <F8> :Black<CR>

"""""""""""""""""""""""
""""""""Plugins""""""""
"""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E203'

let g:black_linelength = 79

let g:gutentags_cache_dir = expand('./.git/tags')

"""""""""""""""""""""""
"""""""Utilities"""""""
"""""""""""""""""""""""

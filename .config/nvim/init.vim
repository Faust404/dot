set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set cindent
set textwidth=79            " Automatically wrap text as close to X characters
set number relativenumber   " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set undolevels=1000	        " Number of undo levels
set incsearch	            " Searches for strings incrementally
set textwidth=100	        " Line wrap (number of cols)
set path+=**                " Search down into subfolders
set foldmethod=indent       " Groups of lines with the same indent form a fold
set foldlevel=99
set showcmd                 " Display incomplete commands

" Spell checker
let mapleader = "\<Space>"
nnoremap <Leader>s :set invspell<CR>

" Enable folding with the spacebar
nnoremap <space> za

" Path to custom snippets
let g:UltiSnipsSnippetDirectories=["/home/himavanth/.config/nvim/plugins/UltiSnips/mysnippets"]

" Linters config
let g:ale_linters = {
    \   'python': ['pyls'],
    \   'sh': ['shellcheck'],
    \   'tex': ['chktex', 'lacheck'],
\}
let g:ale_completion_enabled=1

" Shortcutting split navigation, saving a keypress:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Aesthetic Plugins Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wombat'

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

augroup parenth
  autocmd!
  autocmd FileType tex,vim,lisp,clojure,scheme RainbowParentheses
augroup END

" Nerdtree autostart
autocmd vimenter * NERDTree

filetype plugin on
source ~/.config/nvim/pls.vim
source ~/.config/nvim/plug.vim

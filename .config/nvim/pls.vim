call plug#begin('~/.config/nvim/plugins')
" Latex
Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex', { 'for': 'tex' }

" Snippets
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'

" Qol Plugins
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

" Aesthetics 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

Plug 'w0rp/ale'

call plug#end()


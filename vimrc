set nocompatible               "use Vim settings, rather than Vi

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'henrik/vim-indexed-search'
Plug 'kana/vim-smartinput'
Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'mmozuras/vim-whitespace'
Plug 'mmozuras/vim-cursor'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'thoughtbot/vim-rspec'

"Languages
Plug 'tpope/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/html5.vim'
Plug 'jimenezrick/vimerl'
Plug 'elixir-lang/vim-elixir'
Plug 'derekwyatt/vim-scala'
Plug 'vim-jp/cpp-vim'
Plug 'wting/rust.vim'
Plug 'fatih/vim-go'
Plug 'keith/swift.vim'
Plug 'udalov/kotlin-vim'

call plug#end()

set backspace=indent,eol,start "allow backspacing over everything in insert mode

set showcmd                    "show incomplete cmds down the bottom
set showmode                   "show current mode down the bottom

set incsearch                  "find the next match as we type the search
set hlsearch                   "highlight searches by default

set ignorecase                 "set search to be case insensitive
set smartcase                  "unless you typed uppercase letters in your query

set number                     "add line numbers
set showbreak=...
set wrap linebreak nolist

set laststatus=2               "enable statusline

set linespace=4                "add some line space for easy reading

set visualbell t_vb=           "disable visual bell

set foldlevelstart=99          "remove folds

set wildmenu                   "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest      "make cmdline tab completion similar to bash
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak,.svn,.hg,.bzr,.git,

filetype plugin indent on      "load ftplugins and indent files

syntax on                      "turn on syntax highlighting

set hidden                     "hide buffers when not displayed

set ttyfast

autocmd VimResized * :wincmd = "automatically rebalance windows on resize
autocmd InsertLeave * if expand('%') != '' | update | endif

if has('gui_running')
  set guioptions-=T            "turn off toolbar
  set guioptions-=m            "turn off menubar

  "turn off scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b
end

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set scrolloff=5

if exists('+colorcolumn')
  set colorcolumn=80 "color the 80th column differently as a wrapping guide
endif

let g:mapleader = ","

map <Leader><Leader> <C-^>

"copy/paste mappings
noremap <leader>y "*y
noremap <leader>yy "*Y
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>"

"map up/down arrow keys to unimpaired commands
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

"map left/right arrow keys to indendation
nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

noremap <Leader>/ :nohls<CR>

noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

inoremap jj <Esc><Esc>
inoremap jk <Esc><Esc>
inoremap kj <Esc><Esc>

colorscheme solarized
set background=dark
set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h12

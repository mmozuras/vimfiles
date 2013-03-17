runtime bundle/pathogen/autoload/pathogen.vim

set nocompatible               "use Vim settings, rather than Vi
filetype off                   "required

"powerline works poorly on windows vim
let g:pathogen_disabled = []
if !has("gui_running") && has("win32")
    call add(g:pathogen_disabled, 'powerline')
endif

call pathogen#infect()
call pathogen#helptags()

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
set wildignore=*.o,*.obj,*~    "stuff to ignore when tab completing

set formatoptions-=o           "dont continue comments when pushing o/O

filetype plugin indent on      "load ftplugins and indent files

syntax on                      "turn on syntax highlighting

set mouse=a                    "mouse in all modes

set hidden                     "hide buffers when not displayed

set guioptions-=T              "turn off toolbar
set guioptions-=m              "turn off menubar

"turn off scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=b

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

let mapleader = ","            "map <Leader> from \ to ,
let maplocalleader = "/"       "map <LocalLeader> to \

map <Leader><Leader> <C-^>

inoremap jk <Esc>
inoremap kj <Esc>

nnoremap + <C-a>
nnoremap - <C-x>

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
nnoremap <Leader>ss :source $MYVIMRC<Bar>:source $MYVIMRC<CR>

nnoremap <Tab>h <C-w>h
nnoremap <Tab>j <C-w>j
nnoremap <Tab>l <C-w>l
nnoremap <Tab>k <C-w>k

set background=dark
colorscheme solarized
if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    set lines=60
    set columns=120

    if has("gui_gnome")
        set guifont=Monospace\ Bold\ 11
    elseif has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h12
    elseif has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h11
        set enc=utf-8
    endif
endif

"go to last position when opening a file, but now when writing commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

"strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    "preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    "do the business:
    %s/\s\+$//e
    "restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

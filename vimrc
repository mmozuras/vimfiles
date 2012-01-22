runtime bundle/pathogen/autoload/pathogen.vim

set nocompatible               "use Vim settings, rather than Vi
filetype off                   "required!

"powerline works poorly on windows vim
let g:pathogen_disabled = []
if !has("gui_running") && has("win32")
    call add(g:pathogen_disabled, 'powerline')
endif

call pathogen#infect()
call pathogen#helptags()

set backspace=indent,eol,start "allow backspacing over everything in insert mode
set history=1000               "store lots of :cmdline history

set showcmd                    "show incomplete cmds down the bottom
set showmode                   "show current mode down the bottom

set incsearch                  "find the next match as we type the search
set hlsearch                   "highlight searches by default

set number                     "add line numbers
set showbreak=...
set wrap linebreak nolist

set laststatus=2               "enable statusline

set linespace=4                "add some line space for easy reading

set visualbell t_vb=           "disable visual bell

set foldlevelstart=99          "remove folds

set wildmode=list:longest      "make cmdline tab completion similar to bash
set wildmenu                   "enable ctrl-n and ctrl-p to scroll thru matches
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

let g:syntastic_enable_signs=1 "mark syntax errors with :signs

let mapleader = ","            "map <Leader> from \ to ,

map <Leader><Leader> <C-^>
map <Leader>u :GundoToggle<CR>

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

"ctrlp configuration
let g:ctrlp_max_height = 15
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>t :CtrlP<CR>

colorscheme molokai
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

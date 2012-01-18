runtime bundle/pathogen/autoload/pathogen.vim

"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"powerline works poorly on windows vim
let g:pathogen_disabled = []
if !has("gui_running") && has("win32")
    call add(g:pathogen_disabled, 'powerline')
endif

"load pathogen managed plugins
call pathogen#infect()
call pathogen#helptags()

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set number      "add line numbers
set showbreak=...
set wrap linebreak nolist

"enable statusline
set laststatus=2

"map <Leader> from \ to ,
let mapleader = ","

map <Leader><Leader> <C-^>

"mapping for command key to map navigation thru display lines instead
"of just numbered lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

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

"add some line space for easy reading
set linespace=4

"disable visual bell
set visualbell t_vb=

"turn off toolbar and menu bar on gvim/mvim
set guioptions-=T
set guioptions-=m

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

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"dont continue comments when pushing o/O
set formatoptions-=o

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"hide buffers when not displayed
set hidden

"ctrlp configuration
let g:ctrlp_max_height = 15
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>t :CtrlP<CR>

colorscheme molokai
if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    set guitablabel=%M%t
    set lines=40
    set columns=115

    if has("gui_gnome")
        set guifont=Monospace\ Bold\ 11
    elseif has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h12
    elseif has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h11
        set enc=utf-8
    endif
endif

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"snipmate setup
try
  source ~/.vim/snippets/support_functions.vim
catch
  source ~/vimfiles/snippets/support_functions.vim
endtry

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
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
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"key mapping for saving file
nmap <C-s> :w<CR>

let ScreenShot = {'Icon':0, 'Credits':0, 'force_background':'#FFFFFF'}

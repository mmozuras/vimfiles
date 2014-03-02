" Configuration
if !has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        " TODO: Commented out, because it breaks ability to use jj for <Esc>
        " au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

let g:airline_powerline_fonts = 1

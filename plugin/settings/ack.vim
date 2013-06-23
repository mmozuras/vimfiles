" Configuration
let g:ackprg = 'ag --nogroup --nocolor --column'

" Mappings
nnoremap <Leader>a :Ack
nnoremap <Leader>* :Ack <cword><CR>

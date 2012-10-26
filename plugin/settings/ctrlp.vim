" Configuration
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.swp$\|node_modules$'
let g:ctrlp_max_height = 15
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

" Mappings
let g:ctrlp_map = ',t'
nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap <Leader>b :CtrlPBufTag<CR>
nnoremap <Leader>c :CtrlPClearCache<CR>

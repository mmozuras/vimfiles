" Configuration
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.swp$\|node_modules$'
let g:ctrlp_max_height = 15
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Mappings
let g:ctrlp_map = ',t'
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>r :CtrlPMRU<CR>
nnoremap <Leader>o :CtrlPBufTag<CR>
nnoremap <Leader>c :CtrlPClearCache<CR>

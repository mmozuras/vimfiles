" Configuration
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_max_candidates = 200
endif

" Mappings
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<CR>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<CR>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<CR>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<CR>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<CR>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<CR>
nnoremap <leader>a :<C-u>Unite -no-split grep:.<CR>

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction

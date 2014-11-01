" Configuration
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" Mappings
map <Leader>sf :call RunCurrentSpecFile()<CR>
map <Leader>ss :call RunNearestSpec()<CR>
map <Leader>sl :call RunLastSpec()<CR>
map <Leader>sa :call RunAllSpecs()<CR>

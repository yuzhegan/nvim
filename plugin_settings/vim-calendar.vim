" === vim-calendar
" ===
source ~/.config/nvim/credentials.vim

noremap \c :Calendar -position=here<CR>
noremap \\ :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
	autocmd!
	" diamond cursor
	autocmd FileType calendar nmap <buffer> k <Plug>(calendar_up)
	autocmd FileType calendar nmap <buffer> h <Plug>(calendar_left)
	autocmd FileType calendar nmap <buffer> j <Plug>(calendar_down)
	autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
	autocmd FileType calendar nmap <buffer> <c-k> <Plug>(calendar_move_up)
	autocmd FileType calendar nmap <buffer> <c-h> <Plug>(calendar_move_left)
	autocmd FileType calendar nmap <buffer> <c-j> <Plug>(calendar_move_down)
	autocmd FileType calendar nmap <buffer> <c-l> <Plug>(calendar_move_right)
	autocmd FileType calendar nmap <buffer> i <Plug>(calendar_start_insert)
	autocmd FileType calendar nmap <buffer> I <Plug>(calendar_start_insert_head)
	" unmap <C-n>, <C-p> for other plugins
	autocmd FileType calendar nunmap <buffer> <C-n>
	autocmd FileType calendar nunmap <buffer> <C-p>


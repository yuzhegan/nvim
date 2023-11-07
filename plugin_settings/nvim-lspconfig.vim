"=======
"kite设置"
"=============


"kite lsp
au User lsp_setup call lsp#register_server({
     \ 'name': 'kite',
     \ 'cmd': '~/.local/share/kite/current/kite-lsp --editor=vim',
     \ 'whitelist': [ "python", "go"],
     \ })


"kite设置"
"禁用kite自动补全
let g:kite_completions=0
let g:kite_supported_languages = ['python','go']
""退出摘要
let g:kite_tab_complete=0
set completeopt+=menuone
set completeopt+=noinsert
set completeopt+=preview
"autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg
let g:kite_previous_placeholder = '<c-p>'
let g:kite_next_placeholder = '<c-n>'
"nmap <silent> <buffer> gm <Plug>(kite-docs)
let g:kite_documentation_continual=0
"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
"set laststatus=2  " always display the status line
"let g:kite_log=1


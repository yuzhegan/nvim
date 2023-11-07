" ===
" === ipython-cell.vim install tmux
" ===
" escape
nnoremap ,q o<escape>^i# %%<CR>
inoremap ,q <escape>o<escape>^i# %%<CR>
nnoremap ,Q Go<escape>^i# %%<CR>
inoremap ,q <escape>Go<escape>^i# %%<CR>
let g:ipython_cell_prefer_external_copy = 1
"let g:ipython_cell_regex = 1
"let g:ipython_cell_tag = '# %%( [^[].*)?'


source ~/.config/nvim/after/ftplugin/python.vim
augroup ipython_cell_highlight
    autocmd!
    autocmd ColorScheme * highlight IPythonCell ctermbg=238 guifg=darkgrey guibg=#444d56
augroup END


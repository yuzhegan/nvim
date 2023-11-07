
" __  ____   __  _   ___     _____ __  __ 
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| |
"| |  | | | |   | |\  | \ V /  | || |  | |
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|
                                         
"Author: yuzhe


let g:vim_home = expand('~/.config/nvim/')

let config_list = [
      \ 'config.vim',
      \ 'autocmd.vim',
      \ 'commands.vim',
      \ 'mappings.vim',
      \ 'pluginstall.vim',
      \ 'plugin_settings/*.vim'
      \]
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor

set conceallevel=2
set concealcursor=nc
language en_US.utf8
set shellslash

" ===
" === Markdown/org Settings
" ===
"au BufRead,BufNewFilE *.org    set filetype=org
"Snippets
source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell

set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" ==================== Dress up my vim ====================
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
silent! color deus
silent! color catppuccin

colorscheme deus
"colorscheme neodark
hi NonText ctermfg=gray guifg=grey10


" Python自动插入文件标题
" ======
 autocmd BufNewFile *py exec ":call SetPythonTitle()"
 func SetPythonTitle()
  "call setline(1,"# -*- coding: utf-8 -*-")
  call setline(1,"# encoding='utf-8")
  call append(line("."), "")
  call append(line(".")+1, "\# @Time: ".strftime("%Y-%m-%d",localtime()))
  call append(line(".")+2, "\# @File: ".("%"))
	call append(line(".")+3, "#!/usr/bin/env")
	"call append(line(".")+4, "\# @Description: ")
	call append(line(".")+4, "from icecream import ic")
	"call append(line(".")+5, "import sys")
	call append(line(".")+5, "import os")
	call append(line(".")+6, "os.chdir(os.path.abspath(os.path.dirname(__file__)))")
	call append(line(".")+7, "#change cwd to current file dir")
 endfunc

 
"新建文件后，自动定位到文件末尾
 autocmd BufNewFile * normal G o


" Open the _machine_specific.vim file if it has just been created
if has_machine_specific_file == 0
	exec "e ~/.config/nvim/_machine_specific.vim"
endif



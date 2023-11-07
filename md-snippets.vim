"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype org inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype org inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype org inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype org inoremap <buffer> ,b ** <++><Esc>F*i
autocmd Filetype org inoremap <buffer> ,s ++~ <++><Esc>F~xhi
autocmd Filetype org inoremap <buffer> ,i // <++><Esc>F/i
autocmd Filetype org inoremap <buffer> ,d == <++><Esc>F=i
autocmd Filetype org inoremap <buffer> ,m - [ ] 
autocmd Filetype org inoremap <buffer> ,p [[][<++>]]<++><Esc>F[hi
autocmd Filetype org inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype org inoremap <buffer> ,1 <Esc><S-v>c<Esc>i*<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,2 <Esc><S-v>c<Esc>i**<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,3 <Esc><S-v>c<Esc>i***<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,4 <Esc><S-v>c<Esc>i****<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,5 <Esc><S-v>c<Esc>i*****<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,6 <Esc><S-v>c<Esc>i******<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,7 <Esc><S-v>c<Esc>i*******<Space><Enter><++><Esc>kA
autocmd Filetype org inoremap <buffer> ,l --------<Enter>
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ] 
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
autocmd Filetype markdown inoremap <buffer> <C-Space> <Esc>^f[lliX<Esc>hx
autocmd Filetype markdown nnoremap <buffer> <C-Space> ^f[lliX<Esc>hx


"@startuml !theme spacelab @startmindmap  markdown to mindmap
autocmd Filetype markdown inoremap <buffer> =1 <Esc><S-v>c<Esc>i+[#ccffcc]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =2 <Esc><S-v>c<Esc>i++[#2a9d8f]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =3 <Esc><S-v>c<Esc>i+++[#e9c46a]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =4 <Esc><S-v>c<Esc>i++++[#f4a261]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =5 <Esc><S-v>c<Esc>i+++++[#e76f51]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =6 <Esc><S-v>c<Esc>i++++++[#ccccff]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =7 <Esc><S-v>c<Esc>i+++++++[#ff9999]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =8 <Esc><S-v>c<Esc>i++++++++[#99ccff]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> =9 <Esc><S-v>c<Esc>i+++++++++[#339933]<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap <buffer> -1 <Esc><S-v>c<Esc>i-[#ccffcc]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -2 <Esc><S-v>c<Esc>i--[#2a9d8f]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -3 <Esc><S-v>c<Esc>i---[#e9c46a]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -4 <Esc><S-v>c<Esc>i----[#f4a261]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -5 <Esc><S-v>c<Esc>i-----[#e76f51]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -6 <Esc><S-v>c<Esc>i------[#ccccff]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -7 <Esc><S-v>c<Esc>i-------[#ff9999]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -8 <Esc><S-v>c<Esc>i--------[#99ccff]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> -9 <Esc><S-v>c<Esc>i---------[#339933]<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,e <Esc><S-v>c<Esc>i@startuml<Space><Enter>@startmindmap<Space><Enter><Enter>@endmindmap<Space><Enter>@enduml<Esc>2ko

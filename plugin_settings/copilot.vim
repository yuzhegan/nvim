""=====
"coplilot 
"===============
"Enter to accpet the current suggestion   waitlist
"imap <silent><script><expr> <CR> copilot#Accept("\<CR>")
"let g:copilot_no_tab_map = v:true
nnoremap <LEADER>cp :Copilot panel<CR>
let g:copilot_node_command =
                              \ "~/.nvm/versions/node/v16.17.0/bin/node"
imap <silent><script><expr> <C-o> copilot#Accept("\<CR>")
imap <silent><script><expr> <C-k> copilot#Previous()
imap <silent><script><expr> <C-j> copilot#Next()



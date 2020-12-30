" ==================MAPEO======================
let mapleader=" "

" En el modo normal con F3  activamos NERDTree
command NT NERDTree
nmap <F3> :NERDTreeToggle<cr>

" En el modo normal y insercion F2 guardara los cambios realizados al archivo
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>

" Cambia entre los numeros relativos a normales en modo insercion y normal
nmap <F5> :call CambiarNumerosRelativos()<CR>
imap <F5> <Esc>:call CambiarNumerosRelativos()<CR>a

imap ii <Esc><CR>

" SemanticHighligh
:nnoremap <Leader>h :SemanticHighlightToggle<cr>

" easymotion
nmap <leader>s <Plug>(easymotion-s2)

" Renombrar simbolo
nmap <leader>rn <Plug>(coc-rename)

" Tagbar
nmap <F8> :TagbarToggle<CR>

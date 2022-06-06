" ==================MAPEO======================
let mapleader=" "

" split resize
noremap <leader>> 20 <C-w>>
noremap <leader>< 20 <C-w><

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

" Abrir archivos con xdg
nnoremap gX :silent :execute
            \ "!xdg-open" expand('%:p:h') . "/" . expand("<cfile>") " &"<cr>

nnoremap <leader>kp :let @*=expand("%")<CR>

" Quitar el subrayado al buscar
map <esc> :noh<cr>


nmap <leader>vs :call OpenVSCode()<CR>

" GoTo definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Multicursor mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<leader><C-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<leader><C-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Minimap
nmap <leader>mm :MinimapToggle<cr>

" Floaterm
nnoremap <silent> <leader>f <C-\><C-n>:FloatermNew<CR>
let g:floaterm_keymap_new = '<leader>f'
nnoremap <silent> <leader>fp <C-\><C-n>:FloatermPrev<CR>
let g:floaterm_keymap_prev = '<leader>fp'
nnoremap <silent> <leader>fn <C-\><C-n>:FloatermNext<CR>
let g:floaterm_keymap_next = '<leader>fn'
nnoremap <silent> <leader>ft <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_keymap_toggle = '<leader>ft'

command! FZF FloatermNew --name=fzf --title=fzf fzf

command! DebugC FloatermNew --name=DebugC --title=DebugC --wintype=vsplit --width=80

"==================FUNCIONES====================

" Funcion utilizada para el mapero de a tecla <F5>
function! CambiarNumerosRelativos()
	if &relativenumber == 1
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunction


" Funcion para abrir archivo en VScode
function! OpenVSCode()
	:command! OpenInVSCode exe "silent !code --goto '" . expand("%") . ":" . line(".") . ":" . col(".") . "'" | redraw!
endfunction

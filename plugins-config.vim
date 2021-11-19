"==================PLUGINS CONFG=================

"=====================NERDTREE=================== 

" Introduce el tamaño de NerdTree
:let g:NERDTreeWinSize=20
:let g:tagbar_width=20
let NERDTreeQuitOnOpen=1
let NERDTreeMapOpenInTab='\t'

" Configuracion de los comentarios de Doxygen
:let g:DoxygenToolkit_briefTag_pre="@brief "
:let g:DoxygenToolkit_paramTag_pre="@param "
:let g:DoxygenToolkit_returnTag_pre="@return "
:let g:DoxygenToolkit_authorName="AbrahamRH"
:let g:DoxygenToolkit_blockHeader="-------------------------------"
:let g:DoxygenToolkit_blockFooter="-------------------------------"

" Colorscheme de la linea de status
" :let g:lightline = {
	" \ 'colorscheme': 'tokyonight'
	" \ }
:let g:lightline = {
	\ 'colorscheme': 'tokyonight',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified','gitbranch' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
  \   'gitbranch': 'FugitiveHead'
	\ },
	\ }


" Usar deus

"===============Multicursor======================
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<leader><C-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<leader><C-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"===================== CoC =========================

" GoTo definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Utilizamos kite con COC
if &filetype == "javascript" || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif

" Gatillo con el tabulador 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Usar K para ver la documentación
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Resaltar el cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Gatillo para completado <c-space> 
inoremap <silent><expr> <c-space> coc#refresh()


inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

autocmd Filetype python let b:coc_suggest_disable = 1
autocmd Filetype javascript let b:coc_suggest_disable = 1
autocmd Filetype scss setl iskeyword+=@-@

"Juntar el plugin de Ale con Coc
let g:ale_disable_lsp = 1 

"================= NERDcommenter ================
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario

"================= IndentLines ==================
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

"==================== TagBar ====================
let g:tagbar_width = 45
let g:tagbar_show_data_type = 1

"==================== Kite ======================
let g:kite_supported_languages = ['*']

"=============== Goyo y Limelight ==============
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


"================= Rainbow =====================
let g:rainbow_active = 1
let g:rainbow_guifgs = ['#3e5380', '#FF9E64', '#F7768E', '#b9f27c']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
au FileType c,cpp,objc,objcpp call rainbow#load()

"=================Templates=====================
let g:username = "AbrahamRH"
let g:emal = "abrahamrzhz@gmail.com"

"==================PLUGINS CONFG=================

"==================EditorConfig==================
let g:EditorConfig_core_mode='external_command'

"=====================NERDTREE===================
" Introduce el tamaño de NerdTree
:let g:NERDTreeWinSize=30
:let g:tagbar_width=30
:let NERDTreeQuitOnOpen=1
:let NERDTreeMapOpenInTab='\t'

"=====================DOXYGEN====================
" Configuracion de los comentarios de Doxygen
:let g:DoxygenToolkit_briefTag_pre="@brief "
:let g:DoxygenToolkit_paramTag_pre="@param "
:let g:DoxygenToolkit_returnTag_pre="@return "
:let g:DoxygenToolkit_authorName="AbrahamRH"
:let g:DoxygenToolkit_blockHeader="-------------------------------"
:let g:DoxygenToolkit_blockFooter="-------------------------------"


"===============Multicursor======================
:let g:multi_cursor_use_default_mapping=0

"===================== CoC =========================
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

autocmd Filetype python let b:coc_suggest_disable = 0
autocmd Filetype javascript let b:coc_suggest_disable = 0
autocmd Filetype scss setl iskeyword+=@-@

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
" Utilizamos kite con COC
if &filetype == "javascript" || &filetype == "python"
    " inoremap <c-space> <C-x><C-u>
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif


"=============== Goyo y Limelight ==============
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"================= Rainbow =====================
" let g:rainbow_active = 1
" let g:rainbow_guifgs = ['#3e5380', '#FF9E64', '#F7768E', '#b9f27c']
" let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
" au FileType c,cpp,objc,objcpp,php,java,js call rainbow#load()

"=================Templates=====================
let g:username = "AbrahamRH"
let g:emal = "abrahamrzhz@gmail.com"

"=================Snippets COC======================
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


"========================PLUGINS=========================
call plug#begin()

    " Plugins para el funcionamiento
    Plug 'scrooloose/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'vim-scripts/DoxygenToolkit.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'W0rp/ale'
    Plug 'itchyny/lightline.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'Yggdroot/indentLine'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'easymotion/vim-easymotion'
    Plug 'preservim/tagbar'
    " Sintaxis
    Plug 'sheerun/vim-polyglot'
    Plug 'vim-scripts/cSyntaxAfter'
    Plug 'vim-scripts/java.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'jaxbot/semantic-highlight.vim'
    Plug 'sainnhe/gruvbox-material'
    " AUto completado
    Plug 'neoclide/coc.nvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    " Debug
    "Temas para el editor
    Plug 'morhetz/gruvbox'
    Plug 'nightsense/carbonized'
    Plug 'nightsense/office'
    Plug 'chriskempson/vim-tomorrow-theme'
    Plug 'franbach/miramare'
    Plug 'gryf/wombat256grf'
call plug#end()

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
:let g:lightline = {
	\ 'colorscheme': 'deus'
	\ }

"===============Multicursor======================
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
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
    inoremap <silent><expr> <c-space> coc#refresh
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
let g:kite_supported_languages = ['javascript', 'python', 'c']


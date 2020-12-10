" VIM Configuration File
" Description: Archivo de configuraion del editor de textos vim, para uso en programacion en diferentes lenguajes
" Autor: AbrahamRH
    
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
    " AUto completado
    Plug 'neoclide/coc.nvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'

    "Temas para el editor
    Plug 'morhetz/gruvbox'
    Plug 'nightsense/carbonized'
    Plug 'nightsense/office'
    Plug 'chriskempson/vim-tomorrow-theme'
    Plug 'franbach/miramare'

call plug#end()

set nolist

" Habilita la sintaxis
set t_Co=256
syntax enable

"========================================================

set termguicolors

"let g:miramare_transparent_background = 1
let g:miramare_enable_italic = 1
let g:miramare_enable_bold = 1
let g:miramare_disable_comment = 1
let g:miramare_current_word = 'grey background'
"  colorscheme Tomorrow-Night-Eighties
"  colorscheme office-dark
"  colorscheme gruvbox
colorscheme miramare

"========================================================

" Habilita la codificacion en UTF-8 (vim para Windows)
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set encoding=utf-8

" Muestra la barra de estado todo el tiempo con el formato indicado
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


set wildmode=longest,list,full  " Habilita el autocompletado
set cursorline                  " Distingue la linea actual del cursor
set nocompatible                " Desabilita la compatibilidad con vi
set autoindent                  " Crea una auto indentacipn de la linea anterior
set smartindent                 " Usa una indenatacion intligente para C
set textwidth=120               " Coloca la anchura de la pantalla a 120 caracteres
set colorcolumn=120             " Coloca una linea en la columna en el caracter 120
set number                      " Enciende la linea de numeros
set showmatch                   " Subraya las llaves, parentesis, etc...
set wildmenu                    " En el modo comando habiblita el menu de autocompletar
set autowrite                   " Permite guardar los cambios cuando se pierde la atencion en el archivo
set mouse-=a                    " Permite usar el mouse en cualquier modo
set noswapfile                  " Desabilita los archivos de swap
set nobackup                    " Desabilita los backups de los archivos editados
set nowritebackup
set backspace=indent,eol,start	" Hace que cada retroceso fial de una linea, vuelva la line anterior
set undofile	        		" Aun cerrando vim, persiste el historial de cambios
set undodir=~/.vim/undodir  	" Señala la ruta para el archivo de edicion
set updatetime=100
set splitbelow splitright   	" Ls ventana nuevas se abren a la derecha o abajo
set cmdheight=2                 " Da más espacos

" Nuevos cambios
set noshowmode
set clipboard=unnamed
set numberwidth=1
" =================FOLDING=====================
set foldmethod=syntax
set foldcolumn=1
let javascript_fold=1
set foldlevelstart=0
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


"==================PLUGINS CONFG=================
" Introduce el tamaño de NerdTree
:let g:NERDTreeWinSize=20
:let g:tagbar_width=20
let NERDTreeQuitOnOpen=1

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


" Configuracion de Multicursor
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

"CoC

" GoTo definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Renombrar simbolo
nmap <leader>rn <Plug>(coc-rename)

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


"Juntar el plugin de Ale con Coc
let g:ale_disable_lsp = 1 

" easymotion
nmap <leader>s <Plug>(easymotion-s2)

" NERDcommenter
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario

" IndentLines
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" TagBar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 45
let g:tagbar_show_data_type = 1

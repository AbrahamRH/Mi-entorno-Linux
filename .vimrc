" VIM Configuration File
" Description: Archivo de configuraion del editor de textos vim, para uso en programacion en diferentes lenguajes
" Autor: AbrahamRH

"========================PLUGINS=========================
call plug#begin()

    Plug 'scrooloose/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'chriskempson/vim-tomorrow-theme'
    Plug 'vim-scripts/DoxygenToolkit.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'W0rp/ale'
    Plug 'itchyny/lightline.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'vim-scripts/cSyntaxAfter'
    Plug 'vim-scripts/java.vim'
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'terryma/vim-multiple-cursors'

call plug#end()
"========================================================

colorscheme Tomorrow-Night-Eighties

"========================================================


" Habilita la sintaxis
set t_Co=256
syntax on

" Habilita la codificacion en UTF-8 (vim para Windows)
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set encoding=utf-8

" Muestra la barra de estado todo el tiempo con el formato indicado
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


set wildmode=longest,list,full  " Habilita el autocompletado
set cursorline			" Distingue la linea actual del cursor
set nocompatible		" Desabilita la compatibilidad con vi
set autoindent			" Crea una auto indentacipn de la linea anterior
set smartindent			" Usa una indenatacion intligente para C
set textwidth=120		" Coloca la anchura de la pantalla a 120 caracteres
set colorcolumn=120		" Coloca una linea en la columna en el caracter 120
set number			" Enciende la linea de numeros
set showmatch			" Subraya las llaves, parentesis, etc...
set wildmenu			" En el modo comando habiblita el menu de autocompletar
set autowrite			" Permite guardar los cambios cuando se pierde la atencion en el archivo
set mouse=a			" Permite usar el mouse en cualquier modo
set noswapfile			" Desabilita los archivos de swap
set nobackup			" Desabilita los backups de los archivos editados
set backspace=indent,eol,start	" Hace que cada retroceso fial de una linea, vuelva la line anterior
set undofile			" Aun cerrando vim, persiste el historial de cambios
set undodir=~/.vim/undodir	" Señala la ruta para el archivo de edicion
set updatetime=100
set splitbelow splitright	" Ls ventana nuevas se abren a la derecha o abajo

"=================MAPEO DE LAS TECLAS==========================
" En el modo normal con F3  activamos NERDTree
command NT NERDTree
nmap <F3> :NERDTreeToggle<cr>

" En el modo normal y insercion F2 guardara los cambios realizados al archivo
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>

" Cambia entre los numeros relativos a normales en modo insercion y normal
nmap <F5> :call CambiarNumerosRelativos()<CR>
imap <F5> <Esc>:call CambiarNumerosRelativos()<CR>a

"==============================================================

" Crea una excepcion de comando para los siguientes lenguajes
autocmd FileType html,css,sass,scss,javascript,json.*.coffee
			\ setlocal shiftwidth=2 softtabstop=2

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

" Borra los espacios en blanco al guardar el archivo
" autocmd BufWritePre * %s\s\+$//e

"==================PLUGINS CONFG=================
" Introduce el tamaño de NerdTree
:let g:NERDTreeWinSize=20
:let g:tagbar_width=20

" Configuracion de los comentarios
:let g:DoxygenToolkit_briefTag_pre="@brief "
:let g:DoxygenToolkit_paramTag_pre="@param "
:let g:DoxygenToolkit_returnTag_pre="@return "
:let g:DoxygenToolkit_authorName="AbrahamRH"
:let g:DoxygenToolkit_blockHeader="-------------------------------"
:let g:DoxygenToolkit_blockFooter="-------------------------------"

" Colorscheme de la linea de status
:let g:lightline = {
	\ 'colorscheme': 'one'
	\ }

" Configuracion de cSyntaxAfter predeterminada
" autocmd! FileType c,cpp,java call CSyntaxAfter()

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



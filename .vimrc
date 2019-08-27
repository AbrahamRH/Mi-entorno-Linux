" VIM Configuration File
" Description: Archivo de configuraion del editor de textos vim, para uso en programacion en diferentes lenguajes
" @autor: AbrahamRH


"=========================TODO===========================
"   Instalar 
"   doxygen
"   gitgutter
"========================================================
"========================PLUGINS=========================
call plug#begin()

    Plug 'scrooloose/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'chriskempson/vim-tomorrow-theme'

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

set cursorline			" Distingue la linea actual del cursor
set nocompatible		" Desabilita la compatibilidad con vi
set autoindent			" Crea una auto indentacipn de la linea anterior
set smartindent			" Usa una indenatacion intligente para C
set softtabstop=4	  	" Crea una indentacion sintetica de 4 espacios
set shiftwidth=4		" Indenta con 4 espacios nuevamente
set textwidth=120		" Coloca la anchura de la pantalla a 120 caracteres
set colorcolumn=120		" Coloca una linea en la columna en el caracter 120
set number			" Enciende la linea de numeros
set showmatch			" Subraya las llaves, parentesis, etc...
set wildmenu			" En el modo comando habiblita el menu de autocompletar
set autowrite			" Permite guardar los cambios cuando se pierde la atencion en el archivo 
set mouse=a			" Permite usar el mouse en cualquier modo
set noswapfile			" Desabilita los archivos de swap
set nobackup			" Desabilita los backups de los archivos editados
set backspace=indent,eol,start
:let g:NERDTreeWinSize=20
:let g:tagbar_width=20

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



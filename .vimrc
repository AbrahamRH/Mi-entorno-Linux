" VIM Configuration File
" Description: Archivo de configuration del editor de textos vim, para uso en programacion en diferentes lenguajes
" Autor: AbrahamRH
    
"========================PLUGINS=========================
so ~/.vim/plugins.vim
"======================COLORSCHEME=======================
so ~/.vim/themes.vim
" ========================MAPEO==========================
so ~/.vim/maps.vim
"========================================================
" Habilita la sintaxis
set t_Co=256
syntax enable

" Habilita la codificacion en UTF-8 (vim para Windows)
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set encoding=utf-8

" Muestra la barra de estado todo el tiempo con el formato indicado
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set nolist
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
autocmd Filetype python set foldmethod=indent
autocmd Filetype html set foldmethod=manual
set foldmethod=syntax
set foldcolumn=1
let javascript_fold=1
let python_fold=1
set foldlevelstart=0
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


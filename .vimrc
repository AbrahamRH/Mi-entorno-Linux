" VIM Configuration File
" Description: Archivo de configuration del editor de textos vim, para uso en programacion en diferentes lenguajes
" Autor: AbrahamRH

"=====================CONFIGURATION======================== 
"Habilita la sintaxis
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
set textwidth=80               " Coloca la anchura de la pantalla a 120 caracteres
set colorcolumn=80             " Coloca una linea en la columna en el caracter 120
set number                      " Enciende la linea de numeros
set showmatch                   " Subraya las llaves, parentesis, etc...
set wildmenu                    " En el modo comando habiblita el menu de autocompletar
set autowrite                   " Permite guardar los cambios cuando se pierde la atencion en el archivo
set mouse-=a                    " Permite usar el mouse en cualquier modo
set noswapfile                  " Desabilita los archivos de swap
set nobackup                    " Desabilita los backups de los archivos editados
set nowritebackup
set backspace=indent,eol,start	" Hace que cada retroceso final de una linea, vuelva la line anterior
set undofile	        		" Aun cerrando vim, persiste el historial de cambios
set undodir=~/.vim/undodir  	" Señala la ruta para el archivo de edicion
set updatetime=100
set splitbelow splitright   	" La ventana nuevas se abren a la derecha o abajo
set cmdheight=2                 " Da más espacios
set noshowmode
set clipboard=unnamed
set numberwidth=1
set shortmess+=c
set signcolumn=yes

" =================FOLDING=====================
autocmd Filetype python set foldmethod=indent
autocmd Filetype html set foldmethod=manual
set foldmethod=syntax
set foldcolumn=1
let javascript_fold=1
let python_fold=1
set foldlevelstart=0

so ~/.vim/plugins.vim
so ~/.vim/plugins-config.vim
so ~/.vim/themes.vim
so ~/.vim/maps.vim


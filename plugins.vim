" Plugins utilizados
" Description: En este archivo se encuentras todos los plugins utilizados
" Autor: AbrahamRH


call plug#begin()
    " ===============================
    " Plugins para el funcionamiento
    " ===============================

    Plug 'scrooloose/nerdtree'

    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    Plug 'kien/ctrlp.vim'

    Plug 'vim-scripts/DoxygenToolkit.vim'

    Plug 'airblade/vim-gitgutter'

    Plug 'itchyny/lightline.vim'

    Plug 'editorconfig/editorconfig-vim'

    Plug 'Yggdroot/indentLine'

    Plug 'christoomey/vim-tmux-navigator'

    Plug 'easymotion/vim-easymotion'

    Plug 'preservim/tagbar'

    Plug 'junegunn/goyo.vim'

    Plug 'junegunn/limelight.vim'

    Plug 'tpope/vim-fugitive'

    Plug 'aperezdc/vim-template'

    Plug 'terryma/vim-multiple-cursors'

    Plug 'mhinz/vim-signify'

    Plug 'wfxr/minimap.vim'

    Plug 'voldikss/vim-floaterm'

    Plug 'junegunn/fzf', {'do': {-> fzf#install() } }

    Plug 'junegunn/fzf.vim'

    Plug 'vimwiki/vimwiki'

    " ===============================
    " Plugins para la sintaxis
    " ===============================

    Plug 'sheerun/vim-polyglot'

    Plug 'frazrepo/vim-rainbow'

    Plug 'mboughaba/i3config.vim'

    Plug 'pangloss/vim-javascript'

    Plug 'maxmellon/vim-jsx-pretty'

    Plug 'justinmk/vim-syntax-extra'

    " ==============================
    " Plugind para el autocompletado
    " ==============================

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'jiangmiao/auto-pairs'

    Plug 'alvan/vim-closetag'

    Plug 'tpope/vim-surround'

    Plug 'scrooloose/nerdcommenter'

    " =============================
    "    Temas para el editor
    " =============================

    Plug 'sainnhe/gruvbox-material'

    Plug 'franbach/miramare'

    Plug 'ghifarit53/tokyonight-vim'

    Plug 'NLKNguyen/papercolor-theme'

    Plug 'ryanoasis/vim-devicons'

    Plug 'nvim-lua/plenary.nvim'

    Plug 'folke/todo-comments.nvim'


call plug#end()


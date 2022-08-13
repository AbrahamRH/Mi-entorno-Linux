if has('termguicolors')
	set termguicolors
endif
set background=dark


colorscheme gruvbox-material
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_background = 'hard' " medium/soft
let g:gruvbox_material_palette = 'mix'

:let g:lightline = {
	\ 'colorscheme': 'gruvbox_material',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified','gitbranch' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
  \   'gitbranch': 'FugitiveHead'
	\ },
	\ }



" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight
" Colorscheme de la linea de status
" :let g:lightline = {
	" \ 'colorscheme': 'tokyonight'
	" \ }

" let g:miramare_transparent_background = 1
" let g:miramare_enable_italic = 1
" let g:miramare_enable_bold = 1
" let g:miramare_disable_comment = 1
" let g:miramare_current_word = 'bold'
" let g:miramare_cursor = "green"
" colorscheme miramare
"

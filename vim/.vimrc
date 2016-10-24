"set exrc 
"set secure
"set colorcolumn=110 
"highlight ColorColumn ctermbg=darkgray 
"augroup project 
"autocmd! autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen augroup END 
"let &path.="src/include,/usr/include/AL,"

syntax on
set expandtab
set tabstop=4
retab
set shiftwidth=4
set hlsearch
set paste
"set ic


set number 

call plug#begin('~/.vim/plugged')

"On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'amiorin/vim-project'
"Plug 'tomasr/molokai'
Plug 'captbaritone/molokai'
"Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/taglist.vim' "requiere paquete ctags
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}


call plug#end()	
color molokai

"Control T nueva pestaña (la cerramos con :q)
map <c-t> <esc>:tabnew<cr>
" Control PageUp/PageDown cambiar de pestaña
"map <c-pageup> :tabp</c-pageup></cr><cr>
"map <c-pagedown> :tabn</c-pagedown></cr><cr>

" F10 activa modo pegar (no autoindenta, no descoloca lo que pegamos), F11
" lo desactiva
"map <f10> :set paste</f10></cr><cr>
"map <f11> :set nopaste</f11></cr><cr>

" Nuestros valores por defecto para el plugin Project
"let g:proj_flags="imstvcg"

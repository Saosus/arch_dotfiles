set nocompatible

filetype on
filetyp plugin on
filetype indent on

syntax on
set number 

highlight LineNr ctermfg=yellow 
highlight CursorLineNr ctermfg=red

noremap h <left>
noremap j <Up>
noremap k <Down>
noremap l <Right>


call plug#begin()
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'dylanaraps/wal.vim'
call plug#end()

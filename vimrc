
filetype plugin indent on	"enable identation
set autoread
set encoding=utf8	
set ignorecase
set nocompatible	" removing compatibility with VI
set nu			" number on pages
set ruler		" ruler in footer
set showcmd		" to see commands 

syntax on

" Plugin management
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/deoplete.nvim')
	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif
	call dein#add('fxn/vim-monochrome')

	call dein#end()
	call dein#save_state()
endif
let g:monochrome_italic_comments = 1
colorscheme monochrome

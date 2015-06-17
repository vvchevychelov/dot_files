set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"set exrc
"set secure

let mapleader = ","


nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>


syntax on


" filetype plugin indent on

" how many columns a tab counts for
set tabstop=4
" how many columns vim uses when you hit Tab in insert mode
set softtabstop=4
" how many columns text is indented with the reindent operations
set shiftwidth=4

set noexpandtab
set nu


set listchars=tab:\ \ ,trail:\ ,extends:>,precedes:<
set list

" this command lead to inserting first item from pop-up menu
set pastetoggle=<F9>

" set completeopt=menuone,preview
set wildmenu
set wildmode=longest:full,full

augroup words_learning
	autocmd!
	map <F10> :mksession! ~/.vim_session<CR>
	map <F12> :source ~/.vim_session<CR>
augroup END

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c,*.cpp set filetype=c.doxygen
	autocmd BufRead,BufNewFile *.h,*.c,*.cpp set colorcolumn=110
	autocmd BufRead,BufNewFile *.h,*.c,*.cpp highlight ColorColumn ctermbg=darkgray

	" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
augroup END


set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set mouse=a

let g:ycm_global_ycm_extra_conf = '~/dot_files/.ycm_extra_conf.py'


nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

set runtimepath^=~/.vim/bundle/ctrlp.vim

set hlsearch



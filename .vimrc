
"set exrc
"set secure


map <C-n> :NERDTreeToggle<CR>
map <C-r> :NERDTreeFind<cr>


" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
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


set listchars=tab:>-,trail:~,extends:>,precedes:<
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

	" you comlete me
	let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
augroup END


" setting colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized


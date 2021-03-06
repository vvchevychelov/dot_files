set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'flazz/vim-colorschemes'

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

set background=dark
" colorscheme solarized
colorscheme molokai
let g:solarized_termcolors=256

"set exrc
"set secure

syntax on
let mapleader = ","

" buffers switching
nnoremap _ :bp<CR>
nnoremap + :bn<CR>
nnoremap <leader>bs :buffers<CR>
nnoremap <leader>ts :tabs<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow


nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <C-k> <C-W>k<CR> 
nnoremap <C-j> <C-W>j<CR> 
nnoremap <C-h> <C-W>h<CR> 
nnoremap <C-l> <C-W>l<CR> 

nnoremap <leader>q :tabNext<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

if has("gui_running")
    map  <silent>  <S-Insert>  "+gP
    imap <silent>  <S-Insert>  <Esc>"+gP
    " map  <silent>  <S-Insert>  "+p
    " imap <silent>  <S-Insert>  <Esc>"+pa
endif
noremap <LeftRelease> "+y<LeftRelease>


set pastetoggle=<F9>
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set nu
set listchars=tab:\ \ ,trail:\ ,extends:>,precedes:<
set list
set mouse=a
" set completeopt=menuone,preview
set wildmenu
set wildmode=longest:full,full
" hiding unsaved buffer warning when switching files/buffers
set hidden

"set tab name to only name, see help 'statusline'
set guitablabel=%t

set hlsearch
" disable cursor blinkig
set guicursor+=a:blinkon0
"
" bracket highlighting color
hi MatchParen cterm=none ctermbg=green ctermfg=blue
nnoremap :diff :w !diff % -<CR>


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

"""""""""""""""""""""""""""""" Plugin options """""""""""""""""""""""""""""""""""""""""""""

"""""" airline option
let g:airline_theme='molokai'
let g:airline_right_sep = ''
set laststatus=2 
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>>'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#fnamemod = ':t'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'


""""""" You complete me 
let g:ycm_global_ycm_extra_conf = '~/dot_files/.ycm_extra_conf.py'



""""""" Ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
if exists("g:ctrl_user_command")
	  unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,\.cpp$,*/vendor/*,*/\.git/*

let g:ctrlp_custom_ignore = {
   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
   \ 'file': '\v\.(exe|so|dll)$\|\.cpp$',
   \ 'link': 'some_bad_symbolic_links',
   \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_regexp=1


"""""" cscope plugin
source ~/dot_files/cscope_maps.vim

""""" a.vim (switcher between header/cpp)

" :A switches to the header file corresponding to the current file being edited (or vise versa)
" :AS splits and switches
" :AV vertical splits and switches
" :AT new tab and switches
" :AN cycles through matches
" :IH switches to file under cursor
" :IHS splits and switches
" :IHV vertical splits and switches
" :IHT new tab and switches
" :IHN cycles through matches
" <Leader>ih switches to file under cursor
" <Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
" <Leader>ihn cycles through matches 

""""" smooth scrolling

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 22, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 22, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 22, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 22, 4)<CR>


let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1



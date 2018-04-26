" =============================================================
"                      VUNDLE
" =============================================================

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/tabman.vim'
Plugin 'lervag/vimtex'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
call vundle#end()  
" =============================================================
"                       PATHOGEN
" =============================================================

filetype plugin indent on
execute pathogen#infect()

" =============================================================
"                       STARTUP SCRIPT
" =============================================================

au VimEnter * NERDTree 


" =============================================================
"                       KEYMAP SETTINGS
" =============================================================

:map <F1> :TMToggle <CR>
:map <F2> :echo 'Current time is [' . strftime('%c').']'<CR>
:map <F3> :TagbarToggle <CR>
:map <F4> :NERDTreeToggle <CR>
"Remove the highlight when the research is done.
nnoremap <leader><space> :nohlsearch<CR> 

"Tagbar config
let g:tagbar_usearrows = 1
nnoremap <leader>l ::TagbarToggle<CR>

"Change the color theme
let g:lightline = {'colorscheme':'one'}


" =============================================================
"			GENERAL SETTINGS
" =============================================================

set nowrap 
set encoding=utf8
set autoindent  
set hlsearch
set incsearch 
set lazyredraw 
set mouse=a 
set number      
set ruler       
set smartindent 
set softtabstop=4 
set tabstop=4 
set wildmenu 
syntax on
" ===============================================================
"			PLUGIN CONFIG
" ===============================================================
"  --------------------------------------------------------------------------------------------------------------------------
"			Syntastic
"  --------------------------------------------------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"  ---------------------------------------------------------------------------------------------------------------------------
"			NERDCOMMENTER
"  ---------------------------------------------------------------------------------------------------------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

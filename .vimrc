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
Plugin 'davidhalter/jedi-vim'
Plugin 'lervag/vimtex'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
"Plugin 'sheerun/vim-polyglot'
Plugin 'othree/html5.vim'
Plugin 'webastien/vim-ctags'
"Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'plasticboy/vim-markdown'
Plugin 'christoomey/vim-titlecase'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-system-copy'
call vundle#end()  
" =============================================================
"                       PATHOGEN
" =============================================================

filetype plugin indent on
execute pathogen#infect()
" =============================================================
" Disable latex-box because there is a conflict with vimtex
let g:polyglot_disabled = ['latex']
let g:titlecase_map_keys = 0
" =============================================================

" =============================================================
"                       STARTUP SCRIPT
" =============================================================


:set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" =============================================================
"                       KEYMAP SETTINGS
" =============================================================

:map <F1> :TMToggle <CR>
:map <F2> :echo 'Current time is [' . strftime('%c').']'<CR>
:map <F3> :TagbarToggle <CR>
:map <F4> :NERDTreeToggle <CR>
" Remove the highlight when the research is done.
nnoremap <leader><space> :nohlsearch<CR> 

" Tagbar config
let g:tagbar_usearrows = 1

" Desactivate directionals key
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
nmap <leader>gt <Plug>Titlecase
vmap <leader>gt <Plug>Titlecase
nmap <leader>gT <Plug>TitlecaseLine
" ; are rarely use twice
:imap ;; <Esc>
:map ;; <Esc>
" ============================================================
"			AUTOCOMPLETE SETTINGS
" ============================================================

nnoremap <leader>l ::TagbarToggle<CR>

" Change the color theme
let g:lightline = {'colorscheme':'one'}


" =============================================================
"			GENERAL SETTINGS
" =============================================================

set encoding=utf8
set autoindent  
set lazyredraw 
set mouse=a 
set smartindent 
set softtabstop=4 
set tabstop=4 
set backspace=indent,eol,start
set hidden		" Hide files when you open others files
set antialias
set relativenumber
syntax on
set guifont=Zekton:h13
filetype on
filetype plugin on
filetype indent on

" =============================================================
"			Display
" =============================================================
set title		" Update terminal/window title
set number		" Show the number of lines
set ruler		" Show the cursor position
set wrap		" Wrap lines to long on multiples lines
set wildmenu 

" =============================================================
"			Search
" =============================================================

set ignorecase	" Ignore case during the search
set smartcase	" active case if search with case
set incsearch	" Underline results while you writing
set hlsearch	" Underline results after a search


" =============================================================
"			Beep
" =============================================================

set visualbell		" Vim never beep
set noerrorbells	" Vim never beep

" ===============================================================
"			SYNTASTIC
" ===============================================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ================================================================
"			NERDCOMMENTER
" ================================================================

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" " Use compact syntax for prettified multi=line comments
let g:NERDCompactSexyComs = 1
" Align line=wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

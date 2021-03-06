" Use the Molokai theme (originally created for TextMate by Wimer Hazenberg)
colorscheme molokai

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif




" My Leftovers, possibly useful

" set nocompatible              " be iMproved
" filetype off                  " required!
" 
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" 
" " let Vundle manage Vundle
" " required! 
" Bundle 'gmarik/vundle'
" 
" " My bundles here:
" "
" " original repos on GitHub
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" Bundle 'altercation/vim-colors-solarized.git'
" Bundle 'scrooloose/nerdtree'
" Bundle 'kien/ctrlp.vim'
" " vim-scripts repos : http://vim-scripts.org/vim/scripts.html
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" " non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
" " Git repos on your local machine (i.e. when working on your own plugin)
" " Bundle 'file:///Users/gmarik/path/to/plugin'
" 
" filetype plugin indent on     " required!
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
" 
" " My Customizations
" syntax enable
" set background=dark
" colorscheme solarized
" set guifont=Monaco:h14
" 
" if has('gui_running')
" set transparency=10
" endif
" 
" :command FF FufFile
" :command FD FufDir
" :command NT NERDTree
" 
" set number
" 
" "Trying these out
" "Maps the default key for CtrlP
" let g:ctrlp_map = '<C-p>'
" let g:ctrlp_cmd = 'CtrlP'
" 
" " Not sure why these aren't working. Tab through using the arrow keys
" "map <D-Right> <D-}> 
" "map <D-Left> <D-{>

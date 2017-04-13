" GENERAL CONFIG
" --------------

set nocompatible


" VUNDLE CONFIG + PLUGINS
" -----------------------

" Will be re-enabled later; is required for Vundle
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/

if has("win32")
    let path='$HOME/.vim/bundle'
    call vundle#rc('$HOME/.vim/bundle')
else
    call vundle#begin()
endif

" Begin adding plugins

" Let Vundle manage vundle
Plugin 'gmarik/Vundle.vim'

" Airline - better status lines
Plugin 'bling/vim-airline'

" Vim Fugitive - git wrapper
Plugin 'tpope/vim-fugitive'

" Conque-term - console emulator
Plugin 'rosenfeld/conque-term'

" Supertab - tab insertion completion
Plugin 'ervandew/supertab'

" Emmet-vim - HTML zen
Plugin 'mattn/emmet-vim'

" Rust support
Plugin 'rust-lang/rust.vim'

" Typescript support
Plugin 'leafgarland/typescript-vim'

" Dafny support
Plugin 'mlr-msft/vim-loves-dafny'

" All plugins initialized
call vundle#end()


" SYNTAX HIGHLIGHTING AND CODE
" ----------------------------

" Attempt to determine type of file based on contents
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Highlight matching parens
set showmatch


" LEADER AND OTHER MISC SHORTCUTS
" -------------------------------

" Let the comma be the leader instead of \
let mapleader=","

" Let 'jj' be escape
inoremap jj <esc>

" Sensible copy
vmap <C-c> "+yy

" Sensible cut
vmap <C-x> "+c

" Sensible paste
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


" INTERACTING WITH THE OUTSIDE WORLD
" ----------------------------------

" Auto-refresh a file when it's changed externally
set autoread

" Don't bother with backups
"set nobackup
"set nowb
"set noswapfile

" Set backup directory
set backupdir=~/.vim_backup

" Press 'F9' to run file
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Make vim recognize .md as markdown files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown


" VIM USER INTERFACE
" ------------------

" Show line numbers
set number
"set relativenumber

" Show last command in bottom bar
set showcmd

" Show choices to complete wildcards
set wildmenu

" Don't redraw while executing macros (helps boost performance)
set lazyredraw

" Set the current line number to have a dark cyan background to make it stand
" out
hi CursorLineNr term=bold ctermfg=Yellow ctermbg=DarkCyan gui=bold guifg=Yellow guibg=DarkCyan


" VIM STATUS BAR
" --------------

" Airline - enable fancy fonts
let g:airline_powerline_fonts = 1

" Airline - enable list of buffers
let g:airline#extensions#tabline#enabled = 1

" Airline - show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Airline - enable 256 color support
set t_Co=256

" Airline - make status appear all the time 
set laststatus=2


" TABS, BUFFERS, AND WINDOWS
" --------------------------

" Allow buffers to be hidden instead of forcing them to close
set hidden

" Open a new buffer
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<cr>

" Move to the previous buffer
nmap <leader>h :bprevious<cr>

" Close the current buffer
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls <CR>


" VIM KEY BINDINGS
" ----------------

" Configure backspace so it acts normally
set backspace=eol,start,indent

" Make pressing left or right wrap to the next line
set whichwrap+=<,>,h,l,[,]

" Treat long lines as breaklines
"map j gj
"map k gk

" move vertically by visual line, not be actual line
nnoremap j gj
nnoremap k gk
nnoremap <Up> gk
nnoremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj
vnoremap <Up> gk
vnoremap <Down> gj

" TEXT AND TABS
" -------------

" Use spaces instead of tabs
set expandtab

" Be smarter when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" ??
"set breakindent


" SEARCHING
" ---------

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Shortcut to turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>



" Sets how many lines of history VIM has to remember
set history=700

set laststatus=2

set colorcolumn=80

set number
set ruler
syntax enable
set nowrap
set t_Co=256
set background=dark
colorscheme base16-ocean
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#branch#enabled = 1

function! AirlineInit()
  call airline#parts#define_raw('linenr', '%l')
  call airline#parts#define_accent('linenr', 'bold')
  let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', ':%c '])
endfunction
autocmd VimEnter * call AirlineInit()

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers set incsearch
set incsearch

" No annoying sound on errors
set errorbells
set visualbell
set t_vb=
set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /

" Delete trailing white space on save, useful for Python and Coffeescript
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

imap <S-Tab> <Esc><<i
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-n> yyp
nnoremap <C-w> :bd

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'edkolev/promptline.vim'
call vundle#end()
filetype plugin indent on
" Vundle end

" Multiple-cursors
let g:multi_cursor_next_key='<C-d>'

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_map = '<C-p>'

" Reload on vimrc save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

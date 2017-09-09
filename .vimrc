" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Basic configs
set number
set ruler
set history=50
set laststatus=2
set colorcolumn=80
set nowrap
set hidden
colorscheme onedark
syntax on

" Turn off physical line wrapping
set textwidth=0
set wrapmargin=0

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Mouse
set mouse=a

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Use spaces instead of tabs
set expandtab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Auto indent
set autoindent

" Smart indent
set smartindent

" Lines to keep before and after cursor
set scrolloff=10

" Automatically refresh any unchanged files
set autoread

" No annoying sound on errors
set errorbells
set visualbell
set t_vb=
set tm=500

" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Faster Vim!
"   Space is your Leader
let mapleader = "\<Space>"

"   File saving
nmap <Leader>w :w<CR>

"   File saving and closing buffer
nmap <Leader>ww :w<CR>:bd<CR>

"   File saving and quitting vim
nmap <Leader>w1 :wq<CR>

"   Closing buffer
nmap <Leader>q :bd<CR>

"   Quit
nmap <Leader>1 :q<CR>

"   Hard-quit
nmap <Leader>11 :q!<CR>

"   Switch to recent buffer
nmap <Tab> :b#<CR>

"   Find
nmap <Leader>f /

"   Undo (alternative)
" nmap <Leader>z :u<CR>

"   Redo
nmap r <C-r>
" nmap <Leader>r <C-r>

"   Duplicate line
nnoremap <Leader>d yy p

"   Special paste (from clipoard, no indents)
nmap <Leader>p "+p

"   Copy from visual
vmap <Leader>y "+y

"   Jump to line
nmap g gg
vmap g gg

"  Jump to beginning of line, for speed with swedish keyboard
nmap ö ^
vmap ö ^

"  Jump to end of line, for speed with swedish keyboard
nmap ä $
vmap ä $

"   Map § to :, for speed with swedish keyboard
nnoremap § :
vnoremap § :

"   Map 1@a to 11 for faster play of recording
nnoremap 11 1@a

"   Copy file-path
nmap ,y :let @* = expand("%")<CR>

"   Remove all trailing whitespace, automagically
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-startify'
Plug 'pbrisbin/vim-mkdir'
Plug 'rust-lang/rust.vim'

" Plug 'rking/ag.vim'
" Plug 'sjbach/lusty'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-scripts/AutoComplPop'
" Plug 'Valloric/YouCompleteMe'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimproc.vim'
" Plug 'danchoi/ri.vim'
" Plug 'chriskempson/base16-vim'
" Plug 'tpope/vim-bundler'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'darfink/vim-plist'
call plug#end()

" Autocomplete
" set completeopt=noinsert,menuone
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Multiple-cursors
" let g:multi_cursor_next_key='<Leader>d'

" Airline
" let g:airline_theme = 'onedark'
" let g:airline_powerline_fonts = 1
" function! AirlineInit()
"   call airline#parts#define_raw('linenr', '%l')
"   call airline#parts#define_accent('linenr', 'bold')
"   let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', ':%c '])
" endfunction
" autocmd VimEnter * call AirlineInit()

" Unite
" call unite#filters#matcher_default#use(['matcher_regexp'])
" nnoremap <Leader>p :Unite file_rec/async<cr>
" nnoremap <Leader>pp :Unite grep:.<cr>
" nnoremap <Leader>t :Unite buffer<cr>
" nnoremap <Leader>n :Unite file buffer<cr>

" LustyExplorer
" nmap <Leader>n :LustyFilesystemExplorer<CR>

" Lightline
let g:lightline = {
    \   'component_function': {
    \     'filename': 'LightLineFilename'
    \   }
    \ }
function! LightLineFilename()
  return expand('%:.')
endfunction

" CtrlP
" let g:ctrlp_map = '<Leader>p'
let g:ctrlp_map = '<Leader>n'
let g:ctrlp_custom_ignore = 'tmp'
nmap <Leader>t :CtrlPBuffer<CR>

" Ag
" nmap <Leader>ff :Ag<Space>

" TComment
nmap <Leader>2 :TComment<CR>
vmap <Leader>2 :TComment<CR>

" Fugitive
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gl :Gpull<CR>
nmap <Leader>gm :Gmove<Space>
nmap <Leader>ga :Git add<Space>
nmap <Leader>gg :Git<Space>

" Tabularize
nmap <Leader>a0 :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a0 :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a00 :Tabularize /=><CR>
vmap <Leader>a00 :Tabularize /=><CR>
nmap <Leader>a.. :Tabularize /:<CR>
vmap <Leader>a.. :Tabularize /:<CR>
nmap <Leader>a. :Tabularize /^[^:]*:<CR>
vmap <Leader>a. :Tabularize /^[^:]*:<CR>

" SuperTab
function MyTagContext()
  if filereadable(expand('%:p:h') . '/tags')
    return "\<c-x>\<c-]>"
  endif
  " no return will result in the evaluation of the next
  " configured context
endfunction
let g:SuperTabCompletionContexts=['MyTagContext', 's:ContextText', 's:ContextDiscover']

"
" Override highlighting colors
hi Search cterm=NONE ctermfg=NONE ctermbg=white

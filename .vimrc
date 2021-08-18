nnoremap Q <Nop>
nnoremap :bg <c-z>

" Pathogen
"execute pathogen#infect()
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe, completes words with tab button
"Plugin 'Valloric/YouCompleteMe'
" TODO comment ^ back in for youcompleteme

"Plugin 'Valloric/MatchTagAlways'
" All of your Plugins must be added before the following line
"call vundle#end()            " required
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
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" /******* Color Scheme *******
"syntax enable
"set background=dark
"colorscheme solarized
" ******* Color Scheme *******/

" /******* Default *******
syntax on
set number
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4


" ******* Default *******/


" Tab settings for html 
autocmd FileType html setlocal sts=2 sw=2 
" Put a space after // in cpp
autocmd FileType cpp inoremap // //<space>
" Tab settings for ruby 
autocmd FileType rb setlocal sts=2 sw=2 
autocmd FileType c inoremap // //<space>

" //******* Python specific edits *******

" lines longer than 79 columns will be broken
"autocmd FileType python set textwidth=79  
" operation >> indents 4 columns; << unindents 4 columns
"autocmd FileType python set shiftwidth=4  
" a hard TAB displays as 4 columns
"autocmd FileType python set tabstop=5 
" insert spaces when hitting TABs
autocmd FileType python set expandtab     
" insert/delete 4 spaces when hitting a TAB/BACKSPACE
autocmd FileType python set softtabstop=4 
" round indent to multiple of 'shiftwidth'
autocmd FileType python set shiftround    
" align the new line indent with the previous line
autocmd FileType python set autoindent    

" ******* Python specific edits *******//

cabbrev Q quit
cabbrev W write
cabbrev WQ wq
cabbrev Wq wq
cabbrev wQ wq
cabbrev q1 q!

inoremap <C-J> <C-W><C-J>
inoremap <C-K> <C-W><C-K>
inoremap <C-L> <C-W><C-L>
inoremap <C-H> <C-W><C-H>
let mapleader=","

nnoremap <leader>m :w<CR>:make<CR>

set scrolloff=10

" //******* Haskell specific edits *******

autocmd FileType haskell set autoindent
autocmd FileType haskell set tabstop=8                   "A tab is 8 spaces
autocmd FileType haskell set expandtab                   "Always uses spaces instead of tabs
autocmd FileType haskell set softtabstop=4               "Insert 4 spaces when tab is pressed
autocmd FileType haskell set shiftwidth=4                "An indent is 4 spaces
autocmd FileType haskell set shiftround                  "Round indent to nearest shiftwidth multiple

" ******* Haskell specific edits *******//
	autocmd!
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

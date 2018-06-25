" begin vundle
set nocompatible
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim/
"call vundle#begin()
"
"" Let Vundle manage Vundle
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"
"" My Plugins
"Plugin 'tpope/vim-sensible'
"Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-rake'
"Plugin 'tpope/vim-unimpaired'
"Plugin 'nanotech/jellybeans.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'rking/ag.vim'
"Plugin 'kana/vim-textobj-user'
"Plugin 'nelstrom/vim-textobj-rubyblock'
"Plugin 'slim-template/vim-slim'
"Plugin 'chrisbra/csv.vim'
"Plugin 'guns/vim-clojure-static'
"Plugin 'nvie/vim-flake8'
"Plugin 'xolox/vim-notes'
"Plugin 'xolox/vim-misc'
"Plugin 'cfdrake/vim-carthage'
"Plugin 'keith/swift.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'cfdrake/vim-pbxproj'
"
"call vundle#end()
" end vundle

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-airline/vim-airline'
Plug 'cfdrake/vim-carthage'
Plug 'suan/vim-instant-markdown'
Plug 'keith/swift.vim'

call plug#end()

filetype plugin indent on

color flattown

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

if has("autocmd")
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType htmldjango setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType markdown setlocal ts=2 sts=2 sw=2 textwidth=80 expandtab
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
    autocmd BufWritePre *.py :%s/\s\+$//e
    autocmd BufNewFile,BufRead *Fastfile set ft=ruby
    autocmd BufNewFile,BufRead Podfile set ft=ruby
    autocmd BufNewFile,BufRead *.podspec set ft=ruby
    autocmd BufWritePost .vimrc source $MYVIMRC
endif

" Markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:vim_markdown_folding_disabled = 1


" unaudited

set modelines=0
set clipboard=unnamed
set synmaxcol=0
set ttyscroll=10
set encoding=utf-8
" set nowrap
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set relativenumber
set number
set nowritebackup
set noswapfile
set nobackup
set ignorecase
set smartcase
set splitright
set splitbelow

" Global :%s
set gdefault

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Insert mode traversal
inoremap ˙ <C-o>h
inoremap ∆ <C-o>j
inoremap ˚ <C-o>k
inoremap ¬ <C-o>l

" Visual mode 
vnoremap . :norm.<CR>

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 0
let NERDTreeHighlightCursorline = 0
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', '.pyc', '.DS_STORE']
let NERDTreeWinSize = 26

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'

" CtrlP
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5
let g:ctrlp_dont_split = 'NERD_tree_2'

" Python
let g:pyindent_open_paren = '&sw'
let g:pyindent_nested_paren = '&sw'
let g:pyindent_continue = '&sw * 2'

" CSV
let g:csv_no_conceal = 1

" HTML
let html_no_rendering=1

" Project specific .vimrc
set exrc
set secure

" From vimcast
nmap <leader>l :set list!<CR>
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

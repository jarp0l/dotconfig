""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle
set nocompatible
filetype off
set rtp+=~/.config/vim/bundle/vundle.vim


" Vundle plugins go here
call vundle#begin('~/.config/vim/plugins')

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" Light and configurable statusline/tabline plugin
Plugin 'itchyny/lightline.vim'

" Linting | Check syntax and semantic errors while editing
Plugin 'w0rp/ale'

" Code-completion engine
Plugin 'valloric/youcompleteme'

" Multiline cursors
Plugin 'mg979/vim-visual-multi'

" Tree view of directory/ies
Plugin 'scrooloose/nerdtree'

" Define base file handling and code style preferences
Plugin 'editorconfig/editorconfig-vim'

" Flutter support for (Neo)vim
Plugin 'iamcco/coc-flutter'

" Dracula theme
" Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()

filetype indent plugin on

let g:lightline = {
      \ 'colorscheme': 'wombat'
      \ }

" Color scheme
"colorscheme dracula


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""" Vundle""""""""""""""""""""""""""""
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config
""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2

" Remove the default status line
set noshowmode

" Syntax highlighting
syntax on 

set wildmenu

" Tab == 4 spaces   
set tabstop=4

" Disable spaces with tab
"set softtabstop=4

" Tabs are spaces
set expandtab

" Limit column to 80 characters
set textwidth=80

" Show line number
set number relativenumber

" Autotoggle line numbering
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


" Show info like column number at the status bar
set ruler

set lazyredraw

" Show matching bracket
set showmatch

" Start highlightng as soon as typing starts
set incsearch

" Highlight search results
set hlsearch

" Enable folding
set foldenable

" Open folds up to level 5
set foldlevelstart=5

" Fold at indent
set foldmethod=indent

" highlight Comment ctermfg=green

" Use system clipboard
set clipboard=unnamedplus

" Enable selecting with mouse while omitting line numbers
set mouse+=a


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Map Ctrl + l to clear highlighted search result
nnoremap <nowait><silent> <C-l> :nohlsearch<CR>

" Map ] + r to reload .vimrc
nnoremap ]r :source ~/.vimrc<CR>

" Map 'space' to open/close folds
nnoremap <space> za

" Toggle NerdTree tree viewer
map <C-o> :NERDTreeToggle<CR>

" ':w!!' to write to readonly file as sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

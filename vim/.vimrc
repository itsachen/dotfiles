set nocompatible " Running vim, not vi. Keep at top.

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Basic Options
set visualbell " Turn off annoying bell
set tabstop=4
set shiftwidth=4
set expandtab " Soft tabs
filetype on
filetype plugin on " Enable filetype-specific plugins
filetype plugin indent on " Enable filetype-specific indenting. Required for Vundle!

" CONTROL
"
" Space inserts a colon 
noremap <space> :

" Vim mouse scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Disable arrow keys for learning
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" INTERFACE
"
syntax on " Set syntax highlighting on
set relativenumber " Relative number. Both this and number make hybrid mode.
set hlsearch " Highlight search results
set number " Numbered gutter
set cursorline " Cursor line
set lazyredraw " Don't redraw while executing macros for performance
set splitbelow " Open new split panes to the right and bottom
set splitright
set guioptions-=L " Hide MacVim scrollbars
set guioptions-=r

" Powerline
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

" Theme
Bundle 'sjl/badwolf'
set background=dark
let g:badwolf_tabline = 2
let g:badwolf_html_link_underline = 0
colorscheme badwolf

" PLUGINS
"
" spell settings
set spellfile=$HOME/.vim/spell/en.utf-8.add

" ctrlp settings
let g:ctrlp_match_window = 'top' " Display match window at the top of the screen

" SuperTab settings
let g:SuperTabDefaultCompletionType = "context" " Completion based on context
"
" NERDTree settings
map <F5> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if NERDTree is the only window left

" vim-notes settings
let g:notes_directories = ['~/Dropbox/School/Notes']
let g:notes_suffix = '.note' " vim-notes custom filetype
autocmd BufRead,BufNewFile *.note set filetype=note " Register custom notes filetype

" Bundles
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-rails'
Bundle 'rking/ag.vim'
Bundle 'TailMinusF'
Bundle 'SearchComplete'
Bundle 'jacquesbh/vim-showmarks'
Bundle 'myusuf3/numbers.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'terryma/vim-multiple-cursors'


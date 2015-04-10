set nocompatible               " be iMproved
filetype on
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'ervandew/supertab'
Bundle 'rails.vim'
Bundle 'bufexplorer.zip'
Bundle 'vividchalk.vim'
Bundle 'Command-T'
Bundle 'ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'slim-template/vim-slim.git'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

Bundle 'The-NERD-Commenter'
Bundle 'surround.vim'
Bundle 'ZenCoding.vim'

" latex
Bundle 'LaTeX-Box'

" Align plugin
Bundle 'Align'

filetype plugin indent on     " required! 

set nowrap
colorscheme desert
syntax on

" set guifont=Monaco:h14
set guifont=Consolas:h14
set expandtab

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set number      "add line numbers

"hide buffers when not displayed
set hidden

"set higlight search
set hlsearch
set incsearch
set ignorecase

map <leader>r :CommandTBuffer<CR>

" Indentation for latex
set smartindent

" NERDTree mapping
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:loaded_cucumber_syntax_checker=1

"turn off needless toolbar on gvim/mvim
set guioptions-=T

" Command-T settings
let g:CommandTMatchWindowAtTop=1

" Ctrl+S mapping
noremap <Leader>s :update<CR>

" macvim: use anti for better font-weight on imac 29
set anti
" set noantialias

set wildignore+=doc/app
set wildignore+=tmp
set wildignore+=spec/reports
set wildignore+=features/reports
set wildignore+=coverage

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"


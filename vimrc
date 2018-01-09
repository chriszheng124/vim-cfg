set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Bundle 'Valloric/YouCompleteMe'
set completeopt-=preview
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_comments = 0
" let g:ycm_min_num_of_chars_for_completion = 9999999999
" disable boring syntax check
let g:ycm_show_diagnostics_ui=0
let g:ycm_register_as_syntastic_checker=0
let g:ycm_confirm_extra_conf=0
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ '.vimrc': 1
      \}

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
"不显示"press F1 to display help"
let NERDTreeMinimalUI=1

Plugin 'scrooloose/nerdtree'

Plugin 'Raimondi/delimitMate'

Plugin 'vim-airline/vim-airline'

Bundle "davidhalter/jedi"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"end of YCM

syntax on
set nu
set mouse=a
set hlsearch
set incsearch

set showcmd

set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set cinoptions=g0
set softtabstop=4
set expandtab
set smarttab
set ai!

set ruler
set t_Co=256

let loaded_matchparen = 1
set whichwrap+=<,>,h,l
set backspace=indent,eol,start 

set nobackup
set noswapfile

set clipboard=unnamed

set encoding=utf-8
"set cursorline

set wildignore=*.o,*~,*.pyc,*.class "忽略编译文件  

" switch between .cc and .h files
nnoremap <silent> <Leader>a :A<CR>

set scrolloff=3

nmap <c-g> :YcmCompleter GoToDefinition<CR>  
nmap <c-j> :YcmCompleter GoToDeclaration<CR>  

map <F2> :NERDTreeToggle<CR>

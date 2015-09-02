set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" Navigation
Bundle 'ctrlp.vim'
Bundle 'EasyMotion'
Bundle 'scrooloose/nerdtree'
Bundle 'terryma/vim-multiple-cursors'
" Bundle 'The-NERD-tree'
Bundle 'functionlist.vim'

" Git support
Bundle 'tpope/vim-fugitive'
Bundle 'https://github.com/airblade/vim-gitgutter'

" Syntax
Bundle 'coffee.vim'
Bundle 'jade.vim'
Bundle 'JSON.vim'
Bundle 'less.vim'
Bundle 'scrooloose/syntastic'
Bundle 'nginx.vim'
Bundle 'https://github.com/Yggdroot/indentLine.git'

" HTML Helpers
Bundle 'gregsexton/MatchTag'
Bundle 'vim-scripts/matchit.zip'

" PHP IDE
" Bundle 'joonty/vim-phpqa.git'
" Bundle 'php-cs-fixer'
" Bundle 'PHPUnit-QF'
" Bundle 'php-doc'
Bundle 'tComment'
" Bundle 'pedrogimenez/vim-phpunit'
" Bundle 'joonty/vim-phpunitqf.git'
" Bundle 'minibufexpl.vim'
Bundle 'https://github.com/jpalardy/vim-slime'

" Code completion
Bundle 'delimitMate.vim'
Bundle 'SuperTab'
Bundle 'mattn/emmet-vim'
" Bundle 'phpcomplete.vim'
Bundle 'vimomni'
Bundle 'UltiSnips'

" Themes
Bundle 'github-theme'
Bundle 'molokai'
Bundle 'Solarized'
Bundle 'newspaper.vim'

" UI
Bundle 'bling/vim-airline'
" Bundle 'Lokaltog/powerline'
" Bundle 'https://github.com/powerline/powerline'

" Org-mode requirements
" Bundle 'jceb/vim-orgmode'
" Bundle 'https://github.com/jceb/vim-orgmode'
Bundle 'vim-orgmode'
Bundle 'utl.vim'
Bundle 'taglist.vim'
Bundle 'Tagbar'
Bundle 'speeddating.vim'
Bundle 'calendar.vim'

Bundle 'vim-stylus'
" Bundle 'https://github.com/vim-scripts/Conque-Shell'
" Bundle 'https://github.com/Shougo/vimshell.vim'

filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set list
set lcs=trail:·
set ignorecase
set noswapfile

" colorscheme Phoenix-Dark-Blue
colorscheme molokai
if has('gui_running')
    colorscheme molokai
endif

set enc=utf-8
set number
set ruler
set laststatus=2
set hlsearch

let g:EasyMotion_leader_key = 'f'

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" Powerline fonts, fancy and shit
set guifont=Liberation_Mono_for_Powerline:h15
" set guifont=Ubuntu_Mono_derivative_Powerline:h15
" set guifont=Consolas:h14
let g:airline_powerline_fonts = 1

" Slime & Tmux
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_no_mappings = 1

" Disable weird syntastic features
let g:syntastic_php_checkers = ['php']

au BufNewFile,BufRead *.kit set filetype=html

" Function list
map <TAB> : Flisttoggle <CR>

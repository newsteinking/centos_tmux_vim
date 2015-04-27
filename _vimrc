""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" created : 2015년 4월 22일 수요일 22시 36분 59초 KST
" file : .vimrc
" desc : Jou Sung-Shik's .vimrc 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set nocompatible              " be iMproved, required
"filetype off                  " required
"filetype plugin indent on


""""""""""""""""""""""""""""""
" for Vundle
""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Align'
Plugin 'AutoComplPop'
Plugin 'snipMate'
Plugin 'Trinity'
Plugin 'SrcExpl'
Plugin 'taglist.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'davidhalter/jedi-vim'
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'user/L9', {'name': 'newL9'}

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" see :h vundle for more details or wiki for FAQ
""""""""""""""""""""""""""""""
" End of Vundle configuration
""""""""""""""""""""""""""""""




set cursorline
set modelines=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set synmaxcol=128
set clipboard=unnamed
set ttyscroll=10
set encoding=utf-8
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set wildmenu
set ruler
set background=light
set history=700
set undolevels=700
syntax on

set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set nocindent

highlight Pmenu guibg=brown gui=bold


""""""""""""""""""""""""""""""
" unused but useful
""""""""""""""""""""""""""""""
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
"filetype plugin on
"filetype indent on
"set cursorcolumn
"highlight Pmenu term=reverse ctermbg=cyan ctermfg=black
"highlight PmenuSel term=reverse ctermbg=lightred ctermfg=black



""""""""""""""""""""""""""""""
" for Python convention
""""""""""""""""""""""""""""""
set colorcolumn=80
highlight colorcolumn ctermbg=200



""""""""""""""""""""""""""""""
" for Solarized colorscheme
" url : https://github.com/altercation/vim-colors-solarized
""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized



""""""""""""""""""""""""""""""
" VIM airline
" url : https://github.com/bling/vim-airline
""""""""""""""""""""""""""""""
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'bubblegum'
"let g:airline_enable_branch     = 1
"let g:airline_enable_syntastic  = 1
"
" vim-powerline symbols
"let g:airline_left_sep          = '⮀'
"let g:airline_left_alt_sep      = '⮁'
"let g:airline_right_sep         = '⮂'
"let g:airline_right_alt_sep     = '⮃'
"let g:airline_branch_prefix     = '⭠'
"let g:airline_readonly_symbol   = '⭤'
"let g:airline_linecolumn_prefix = '⭡'


"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"
"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

let g:vim_markdown_folding_disabled=1

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END



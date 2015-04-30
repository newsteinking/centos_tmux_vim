""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" created : 2015. 04. 27. (월) 14:52:38 KST
" file : .vimrc
" desc : sean 's .vimrc 
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
Plugin 'The-NERD-tree' 
Plugin 'L9'
Plugin 'https://github.com/wincent/command-t.git'
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
"Plugin 'https://github.com/edkolev/tmuxline.vim.git'
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
" set background=light
" set background=dark
" colorscheme solarized 
set history=700
set undolevels=700
syntax on

" set guifont=Liberation\ Mono\ for\ Powerline\ 10 


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
" set colorcolumn=80
highlight colorcolumn ctermbg=200



""""""""""""""""""""""""""""""
" for Solarized colorscheme
" url : https://github.com/altercation/vim-colors-solarized
""""""""""""""""""""""""""""""
syntax enable
"if has('gui_running')
"    set background=brblue
"else
"    set background=dark
"endif
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
" ============= Like a Source Insight =============”
set mouse=a

" === Taglist ===
" // The switch of the Taglist
nmap <F10> :TlistToggle<CR>

let Tlist_Ctags_Cmnd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Left_Window = 1

" === NERDTree ===
"  // The switch of the NERDTree
nmap <F9> :NERDTreeToggle<CR>

let NERDTreeWinPos = "right"

" === Source explorer ===
" // The switch of the Source Explorer
nmap <F8> :SrcExplToggle<CR>

"// Map the keys below to jump from one window to another:
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_isUpdateTags = 0

" // Set “Enter” key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"
" // Set “Space” key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

map <F3> :tnext^M
map <F2> :tprevious^M

" ============= ctags,cscope =============”

" ====ctags ==========
" add your source directory *************** 
set tags=./tags,/usr/include/tags

" ====cscope==========
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

" add your source directory ***************

if filereadable("./cscope.out")
   cs add cscope.out
else
   cs add /home/share/omap-linux/cscope.out
endif
set csverb

" ============= Fuzzy Finder ============= "
nnoremap fb :FufBuffer!
nnoremap fm :FufMruFile!
nnoremap ff :FufCoverageFile!

"map <Leader>ff <ESC>:FufCoverageFile!<CR>
"map <Leader>fb <ESC>:FufBuffer!<CR>
"map <Leader>fd <ESC>:FufDir!<CR>
 
" 파일명 탐색시 제외할 파일 이름 패턴 지정
"let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

"let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'FavFile':{}, 'Tag':{}, 'TaggedFile':{}}
" 특정 파일 제외
"let g:FuzzyFinderOptions.File.excluded_path = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class$|\.settings$|CVS|((^|[/\\])\.[/\\]$)'
" 대소문자 구분하기 (0 : 대소문자 구분, 1 : 대소문자 구분 안함)
"let g:FuzzyFinderOptions.Base.ignore_case = 0

" 현재 디렉토리 이하에서 파일명으로 검색해서 읽어오기
"map <Leader>ff <ESC>:FuzzyFinderFile \*\*\/<CR>

" 버퍼 목록에서 검색해서 이동하기
"map <Leader>fb <ESC>:FuzzyFinderBuffer<CR>



"====== EDITING PREFERENCES ======"
" Syntax highlighting
syntax on


" In general, don't want anything concealed
if has('conceallevel')
  set conceallevel=0
endif

" Highlight current line
set cursorline

" Text wrap sucks
set nowrap

" Linebreak when obsessive
set linebreak
set textwidth=500

" Continue wrapped line on same indent as previous
if has('breakindent')
  set breakindent
  set breakindentopt+=shift:3
endif

" Numbered lines
set number
set numberwidth=3


" with a smart tab
set smarttab

" and 1 tab == 2 spaces
set tabstop=8       " always keep ts (visual length of \t) at 8
set expandtab       " use spaces instead of tabs
set shiftwidth=2    " 2 spaces when >>
set softtabstop=2   " and when pressing TAB
set shiftround      " always shift by multiple of shiftwidth
set copyindent      " smart indent based on file

" Auto indent when starting new line
set autoindent 
filetype plugin indent on

" Folding on indentation
set foldmethod=indent
set foldlevelstart=5    " start with up to 5 levels open
set foldnestmax=10      " unless callback-hell JS

" Show matching brackets
set showmatch
set matchtime=2

" Searching
set hlsearch    " highlight matches
set incsearch   " search while typing
set ignorecase  " ignore case generally
set smartcase   " but not if searching for capital

" Backspace tweaks
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Better completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Keep cursor off top and bottom of screen
set scrolloff=5

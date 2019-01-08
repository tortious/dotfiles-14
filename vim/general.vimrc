"====== GENERAL ======"
" Update file when changed from the outside
" set autoread

" tags files
set tags=./tags,tags,.git/tags

" matchit.vim is default, why not enable it
runtime macros/matchit.vim

" For editing binaries
set binary

" No swp please, I save all the time
set noswapfile

" Persistent undos (useful for plugins too)
if has('undofile')
  set undofile
  set undodir=~/.vim/undo
endif

" Hide buffers instead of closing
set hidden

" Dont redraw while executing macros
set lazyredraw

" Encoding
set encoding=utf-8 nobomb
set fileencoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

" Hide the annoying banner in netrw explorer
let g:netrw_banner = 0

" Send more characters at a given time
set ttyfast

" Show partial command on last line
set showcmd

" Command completion
set wildmenu

" Allow integration with system clipboard (only newest vim)
if has("clipboard")
    set clipboard+=unnamed
endif

" Colorscheme
colorscheme default

" Enable dark background
set background=dark

" Enable 256 colormode
set t_Co=256

" Mouse tweak
set mousemodel=popup

" Status bar
set laststatus=2                                        " Always show status bar
set statusline=\ %F                                     " Full path
set statusline+=\ %m%r%w                                " Flags (modified, readonly, help, preview)
if exists('g:loaded_fugitive')
    set statusline+=\ %{FugitiveStatusline()}
endif
set statusline+=\ \ CWD:\ %r%{getcwd()}%h               " Current working directory
set statusline+=%=                                      " Left/right separator
set statusline+=\ %y                                    " File type
set statusline+=\ [%{&expandtab?'spaces':'tabs'},       " Using spaces or tabs
set statusline+=%{strlen(&tabstop)?&tabstop:'none'}]    " Spaces in a tab
set statusline+=\ %l/%L\                                " Cursor line/total lines
set statusline+=\ B%n                                   " Buffer number
set statusline+=\ \ %{strftime(\"%H:%M\")}              " Time

" Set 80-char column (off by default)
" set colorcolumn=80
highlight ColorColumn ctermbg=233

" How to split new windows
set splitbelow splitright

" Allow per-file settings
set modeline
set modelines=5     "within the first/last 5 lines

" Allow italics
set t_ZH=[3m
set t_ZR=[23m

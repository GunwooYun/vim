if has("syntax")
syntax on
endif

set nu "Line number

set title "show file name on title line

set laststatus=2 "0:No Show 1:two windows 2:always

set showmatch "Highlight Brace

"*** serach ***
set hlsearch "Highlight search word
set incsearch "Search by char
set ignorecase "Ignore case when search
set smartcase "No ignore case when search word have big

set smartindent "skip macro
set smartcase "no automatic ignore case switch
set smarttab "Assist tab, backspace by ts, sts, sw

set tabstop =3 "Width of tab character
set softtabstop =3 "Fine tunes the amount of white space to be added
set shiftwidth =3 "Determines the amount of whitespace to add in normal mode
set expandtab "When this option is enabled, vi will use spaces instead of tabs

"set autoindent
"set cindent

"set laststatus = 2 "Show num of window

set wildignorecase "Ignore autocompleted case
set wildmenu "Assist command-line autoComplete

set list "Show blank character
set listchars=tab:»\ ,eol:↓,space:·,trail:●,extends:>,precedes:< "Set blank charater

set linebreak "cut line by word
set showbreak=+++\ "show line broken
set wrap "Make short line from long

set nocompatible "arrow key

set ruler "Show cursor location

set fileencodings=utf8,euc-kr "encoding

set nobackup "No make backup file

set showcmd "show command in status line

set history=1000 "instruction history up to 1000

"
:map :nohl
:map :set list! set nu! set showbreak=

colorscheme jellybeans

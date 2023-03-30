" vim runtime configuration file
"
" set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'taglist.vim'
Plugin 'vim-xkbswitch'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:snipMate = { 'snippet_version' : 1 }

if has("syntax")
syntax on
endif

set nu "Line number (off : set nu! OR set nonu)

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
set softtabstop =3 "Fine tunes the amount of white space to be added 탭 크기를 value로 지정 (set st=value)
set shiftwidth =3 "Determines the amount of whitespace to add in normal mode 블록 이동시 열의 너비 (set sw=value)
set expandtab "When this option is enabled, vi will use spaces instead of tabs
"set textwidth=value "Set coulmn length of editing screen 편집할 화면의 열 길이를 정함 (tw=value, 0이면 비활성화)

"set autoindent "indent automacically
"set cindent "indent C style, programming option so that it can be turned off automatically when open .txt file

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

" 단축키
:map<F2> :nohl<CR>
:map<F5> :set list! nu! showbreak=<CR>
:map<F9> :call ToggleNERDTree()<CR>
:map<F10> :tabnew<CR>
imap <C-D> <C-R>=strftime("%Y.%m.%d-%H:%M:%S")<CR> "입력모드
vmap <C-C> y "비주얼모드

let g:NERDTreeIsOpen=0

function! ToggleNERDTree()
    if g:NERDTreeIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "NERDTree")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NERDTreeIsOpen=0
    else
        let g:NERDTreeIsOpen=1
        silent Lexplore
    endif
endfunction

"let s:mappingsState=1

"command! TM call ToggleMappings()

"function! ToggleMappings()
"    if s:mappingsState
"        nnoremap <F9> :Vexplore<CR>
"        " Or any mapping you want to create
"    else
"        unmap <F9>
"        " Or any key you want to unmap
"    endif

"    let s:mappingsState = !s:mappingsState
"endfunction

"alias
" ctrl+] <-> ctrl+v
ab email gunwoo87@gmail.com
ia time0 <C-R>=strftime("%Y.%m.%d-%H:%M:%S")<CR>
ia time1 <C-R>=strftime("%c")<CR>
ca ㅈ w
ca ㅈㅂ wq


colorscheme jellybeans
"autocmd BufRead,BufNewFile *.c,*.h colo jellybeans
"autocmd BufRead,BufNewFile *.cpp colo jellybeans
"autocmd BufRead,BufNewFile *.h colo jellybeans
"autocmd BufRead,BufNewFile *.vimrc colo jellybeans

"SwapExists * let v:swapchoice = 'o' 스왑 파일 존재할 경우 읽기 전용으로 열기
"SwapExists * let v:swapchoice = 'q' 파일 중복해서 열 경우 이전에 열린 파일 종료

"Tags
set tags=/home/gwyun/workplace/BigNumber/tags

let g:XkbSwitchEnabled = 1

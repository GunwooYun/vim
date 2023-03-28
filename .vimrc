" vim runtime configuration file

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
:map<F9> :call ToggleNetrw()<CR>
:map<F10> :tabnew<CR>
imap <C-D> <C-R>=strftime("%Y.%m.%d-%H:%M:%S")<CR> "입력모드
vmap <C-C> y "비주얼모드

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
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


"colorscheme jellybeans
autocmd BufRead,BufNewFile *.c,*.h colo jellybeans
autocmd BufRead,BufNewFile *.cpp colo jellybeans
"autocmd BufRead,BufNewFile *.h colo jellybeans
autocmd BufRead,BufNewFile *.vimrc colo jellybeans

"SwapExists * let v:swapchoice = 'o' 스왑 파일 존재할 경우 읽기 전용으로 열기
"SwapExists * let v:swapchoice = 'q' 파일 중복해서 열 경우 이전에 열린 파일 종료


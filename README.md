# Vim Snippets

## Basic
### 다른 이름으로 저장   
* :w 새로운 파일 이름   
### 파일 덮어쓰기
* :w! 덮어쓸 파일 이름
### 화면 1/2 스크롤
* ctrl + u 위로 1/2 스크롤
* ctrl + d 아래로 1/2 스크롤
### 현재 문서 위치 정보 출력
* ctrl + g
### 아래 행 올리기
* J
### redo
* ctrl + R
* VIM의 undo는 문서를 열고 지금까지의 모든 작업을 되돌릴 수 있음, nice 한 듯

### 이전명령 반복하기
* 마침표(.)
* 일반 모드에서 Ihello를 쓰면 행 맨 앞에 hello 입력 됨
* 다시 일반모드에서 마침표(.)를 입력하면 자동으로 hello가 행 맨 앞에 입력됨

## 복사
### 문서 전체 복사
* :y
### 현재 행부터 n행 복사
* :마침표(.),+20y


## 삭제
### n번재 행 삭제
* :숫자(n)d
* 숫사(n)번째 행 삭제

### n번째 ~ m번째 행 삭제
* :숫자(n),숫자(m)d

### n번째 ~ 마지막 행까지 삭제
* :숫자(n), %d
* 나는 위의 방법보다 shift+v, G, d 순으로 입력해서 삭제

### 현재 행부터 위로 10행, 아래로 5행, 총 16행 삭제
* :-10,+5d

## 테마
### 테마 변경
* :colorschme 테마 이름 (또는 :colo 테마이름)
* :colo ctrl+d 테마 리스트 출력

## 문자열
### 검색
* /[a-g]re a에서 g까지 영문으로 시작하고 re로 끝나는 문자열 검색
### 교체
* :1,$s/교체될문자열/교체할문자열/g
* 1,$ 문서 전체 (또는 %)
* s 교체 명령어
* g 옵션 (g:범위 내 검색된 모든 문자열, i:대소문자 무시, c:교체여부 확인, e:에러 무시)
* 예 : %s/man/boy/c 전체교체/man을/boy로/교체여부확인
* 교체 확인 입력
  * y : 교체 오케이
  * n : 교체 노
  * a : 남은 모든 교체 실행
  * q : quit
  * l : 현재 행만 교체 작업
  * ctrl+e : 한 행 스크롤 아래로
  * ctrl+y : 한 행 스크롤 위로
* :%s//home/gunwoo//user/gunwoo/g -> :%s,/home/gunwoo,/user/gunwoo,g 가독성을 위해
### CR (^M) 삭제 (도스, windows 시스템에서 유닉스 형식 파일로 변경 시)
* :set binary 입력해서 개행문자 출력
* %s/^M//g 여기서 ^M은 ctrl+v, ctrl+m 을 이어서 입력
* %s\r//g 입력도 가능
* 반대의 경우는 %s/$/\^M/g
* :set fileformat=dos or unix or mac (:set ff=dos)
### 특수문자
* ctrl+v ### 입력모드에서 10진수 ASCII 코드 입력
* ctrl+v x## 입력모드에서 16진수 ASCII 코드 입력
* **:ascii 커서가 위치한 문자의 ASCII 코드 출력**
* **$ man ascii 아스키 코드 출력**
### 숫자 증감
* ctrl+a 커서가 숫자 위치에서 1 증가
* ctrl+x 커서가 숫자 위치에서 1 감소

## 파일
### 편집 중 다른 파일 열기
* :e 파일이름 (:edit 파일이름)
* ctrl+6 열린 파일 전환
### 파일 업데이트 후 저장
* :x (:up + :q) 또는 ZZ
### 창 수평 분할
* :sp 또는 ctrl+w s
* :sp 파일 이름
### 창 수직 분할
* :vs 또는 ctrl+w v
* :vs 파일 이름
### 분할된 창 이동
* ctrl+w w 또는 방향키
### 여러 파일 분할 창으로 열기
* vi -o 파일1 파일2 (수직)
* vi -O 파일1 파일2 (수평)
### 파일 비교
* vi -d 파일1 파일2
* :diffput 왼쪽 내용 오른쪽으로 붙여넣기
* :diffget 오른쪽 내용 왼쪽으로 가져오기
### 탭
* :tabedit 파일이름
* :tabp (:tabprevious) 이전 탭 이동
* :tabn (:tabnext) 다음 탭 이동
* :tabnew 파일명 tabclose 

## 편집
### 이동
* w 단어의 시작위치 또는 문장부호에 이동
* e w와 비슷하나 단어의 끝에 이동
* b w와 비슷하나 역방향
* W,E,B 단어 단위가 아닌 문맥단위로 이동
* **% 짝을 이루는 괄호로 이동**

### 오퍼레이션 펜딩 모드
다음 오퍼레이션을 대기하는 기능 (예 : d 누르고 $ 누르면 커서부터 행 끝까지 삭제)
### 삭제(복사도 동일)
* d$ 현재 커서부터 행 끝까지
* dd 현재 행
* dj 현재행과 아래행
* dk 현재행과 윗행
* dw,de 현재 커서 위치부터 단어 끝까지
* **커서 위치와 관계없이 단어 지우려면 diw 또는 dawi**
* d^ 현재 커서부터 행 처음까지
* d} 현재 커서위치부터 문단 끝까지

### 약어
* :ab 약어 목록 출력
* :abclear 야거 모두 해제 

## 프로그래밍
### 자동완성
* ctrl+n 입력모드에서 자동완성
* ctrl+x ctrl+n 뒤 단어까지 자동완성

### Vundle
* Vundle Git : https://github.com/VundleVim/Vundle.vim.git
* Set up Vundle : git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* ~/.vimrc 에 Vundle 코드 추가 <- .vimrc 파일에 작성됨
* 추가하고자 하는 plugin을 .vimrc에 작성 후 :PluginInstall

### NERDTree
* :NERDTree 경로 경로의 디렉토리 오픈, 생략시 현재 디렉토리 오픈
* :NERDTreeClose NERDTree 창 클로즈
* :NERDTreeFind 현재 열고 있는 파일위치 출력
* 단축키
* <CR>,o 디렉토리는 이동, 파일은 오픈
* t 파일을 새로운 탭에서 오픈
* T 파일을 새로운 탭에 백그라운드로 오픈
* x 현재 선택된 노드를 닫고 상위 노드로 이동
* X 현재 노드를 포함하여 하위 노드 모두 클로즈
* e 선택된 노드를 새창에서 오픈

### snipMate
* plugin download
  * Plugin 'MarcWeber/vim-addon-mw-utils'
  * Plugin 'tomtom/tlib_vim'
  * Plugin 'garbas/vim-snipmate'
* : SnipMateOpenSnippetFiles 실행 <- 예약어 목록 보기
* 편집 중 main for wh 등 입력 후 <TAB> 키 누르면 자동완성

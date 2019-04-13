call plug#begin()
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'thinca/vim-visualstar'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 't9md/vim-textmanip'
Plug 'osyo-manga/vim-watchdogs'
Plug 'thinca/vim-prettyprint'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'craigemery/vim-autotag'
Plug 'Townk/vim-autoclose'
Plug 'rking/ag.vim'
call plug#end()

inoremap jj <Esc>
set clipboard+=unnamed
" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax on


" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
set softtabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" 行数 列数表示
set ruler
" 警告音をオフにする  
set belloff=all
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" 不可視文字を表示する
set list
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" コピーデータのインデントをコピーデータと統一
set paste
set mouse+=a

" 初期でNERDTreeを表示
let g:NERDTreeShowBookmarks=1
nnoremap <silent>dir :NERDTreeToggle<CR>

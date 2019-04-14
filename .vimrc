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
Plug 'Shougo/vimproc.vim'
Plug 'marcus/rsense'
Plug 'Shougo/neocomplcache-rsense.vim'
Plug 'supermomonga/neocomplete-rsense.vim'
Plug 'scrooloose/syntastic'
Plug 'thinca/vim-ref'
Plug 'yuku-t/vim-ref-ri'
Plug 'szw/vim-tags'
Plug 'thinca/vim-quickrun'
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
syntax enable



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
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" コピーデータのインデントをコピーデータと統一
set mouse+=a
" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set softtabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
set tabstop=2


" 初期でNERDTreeを表示
let g:NERDTreeShowBookmarks=1
nnoremap <silent>dir :NERDTreeToggle<CR>

"" unite-grep {{{
" unite-grepのバックエンドをagに切り替える
" http://qiita.com/items/c8962f9325a5433dc50d
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200
 
" unite-grepのキーマップ
" 選択した文字列をunite-grep
" https://github.com/shingokatsushima/dotfiles/blob/master/.vimrc
vnoremap /g y:Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>
" }}}

" neocomplete
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" -------------------------------
" Rsense
" -------------------------------
let g:rsenseHome = '/Users/higashino/.rbenv/shims/rsense'
let g:rsenseUseOmniFunc = 1

" --------------------------------
" rubocop
" --------------------------------
" syntastic_mode_mapをactiveにするとバッファ保存時にsyntasticが走る
" active_filetypesに、保存時にsyntasticを走らせるファイルタイプを指定する
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

let g:vim_tags_project_tags_command = "/usr/local/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R {OPTIONS} `bundle show --paths` 2>/dev/null"
" ファイルタイプ毎 & gitリポジトリ毎にtagsの読み込みpathを変える
function! ReadTags(type)
    let l:t = a:type 
    if a:type == 'typescript'
      let t = 'js'
    endif
    if a:type == 'javascript.jsx'
      let t = 'js'
    endif
    try
        execute "set tags=" .$HOME. "/dotfiles/tags_file" . getcwd() . "/" . t . "_tags;"
    catch
    endtry
endfunction

augroup TagsAutoCmd
    autocmd!
    autocmd BufEnter * :call ReadTags(&filetype)
augroup END

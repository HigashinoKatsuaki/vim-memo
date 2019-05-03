if !filereadable(expand('~/.vim/autoload/plug.vim'))
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'thinca/vim-visualstar'
" Plug 'kien/ctrlp.vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'Shougo/neocomplete.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 't9md/vim-textmanip'
Plug 'osyo-manga/vim-watchdogs'
Plug 'thinca/vim-prettyprint'
Plug 'junegunn/fzf.vim'
" Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
" Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats.vim'
Plug 'craigemery/vim-autotag'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'marcus/rsense'
" Plug 'scrooloose/syntastic'
Plug 'thinca/vim-ref'
Plug 'yuku-t/vim-ref-ri'
Plug 'szw/vim-tags'
Plug 'thinca/vim-quickrun'
Plug 'altercation/vim-colors-solarized'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'] }
" Plug 'Quramy/tsuquyomi'
Plug 'ianks/vim-tsx'
Plug 'w0rp/ale'
Plug 'KeitaNakamura/neodark.vim'
Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'ryanolsonx/vim-lsp-typescript'
" Plug 'ryanolsonx/vim-lsp-javascript'
Plug 'kaicataldo/material.vim'
Plug 'ap/vim-css-color'
Plug 'diepm/vim-rest-console'
Plug 'rrethy/vim-illuminate'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'], 'do': 'npm install' }
Plug 'moll/vim-node'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

inoremap jj <Esc>
nnoremap <Space>noh :noh<CR>
nnoremap gt gt<CR>
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
" タブバーを常に表示
set showtabline=2 " 常にタブラインを表示
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
"ファイルタイプの検索を有効にする
filetype plugin on
"ファイルタイプに合わせたインデントを利用
filetype indent on
"sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
set shiftwidth=2
set tabstop=2
autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
autocmd FileType go           setlocal sw=4 sts=4 ts=4 et
autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
" check one time after 4s of inactivity in normal mode
set autoread
" launch new tab when open new file
set switchbuf+=newtab

au CursorHold * checktime

" 初期でNERDTreeを表示
let g:NERDTreeShowBookmarks=1
" 隠しファイルを表示
let NERDTreeShowHidden = 1
" tab間でNERDTreeを共有
if argc() == 0
  let g:nerdtree_tabs_open_on_console_startup = 1
endif
nnoremap <Space>dir :NERDTreeToggle<CR>


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
" let g:syntastic_ruby_checkers = ['rubocop']

let g:vim_tags_project_tags_command = "/usr/local/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R {OPTIONS} `bundle show --paths` 2>/dev/null"
" ファイルタイプ毎 & gitリポジトリ毎にtagsの読み込みpathを変える
function! ReadTags(type)
    let t = a:type 
    if a:type == 'typescript'
      let t = 'js'
    endif
    if a:type == 'javascript.jsx'
      let t = 'js'
    endif
    if a:type == 'typescript.tsx'
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


" syntax
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1

" quickrun
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'runner'    : 'vimproc',
      \ 'runner/vimproc/updatetime' : 60,
      \ 'outputter' : 'error',
      \ 'outputter/error/success' : 'buffer',
      \ 'outputter/error/error'   : 'quickfix',
      \ 'outputter/buffer/split'  : ':rightbelow 8sp',
      \ 'outputter/buffer/close_on_empty' : 1,
      \ }
nnoremap <Space>run :QuickRun<CR>

" gitgutter
" 目印行を常に表示する
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" ctrlp
" nnoremap <Space> f :CtrlP<CR>
" set wildignore+=*/.git/*,        " Linux/MacOSX
" let g:ctrlp_custom_ignore = 'node_modules\|vender\|vendor\|.bundle\|DS_Store\|git'

" vim-lsp
" typescr lsp
" if executable('typescript-language-server')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'typescript-language-server',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
"         \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
"         \ 'whitelist': ['typescript', 'typescript.tsx'],
"         \ })
" endif

" ruby ls
" if executable('solargraph')
"     " gem install solargraph
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'solargraph',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
"         \ 'initialization_options': {"diagnostics": "true"},
"         \ 'whitelist': ['ruby'],
"         \ })
" endif
" let g:lsp_signs_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" nnoremap <Space>sym :LspDocumentSymbol<CR>
" nnoremap <Space>H :LspHover<CR>
" nnoremap gd :LspDefinition<CR>
" nnoremap gtd :LspTypeDefinition<CR>
" nnoremap <C-j> :LspReferences<CR>

" fzf
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
nnoremap <C-p> :GFiles<CR>
nnoremap <Space>F :FZF<CR>

" airline
" let g:airline_theme = 'material'

" lightline
let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'modified': 'LightlineModified',
        \   'readonly': 'LightlineReadonly',
        \   'fugitive': 'LightlineFugitive',
        \   'filename': 'LightlineFilename',
        \   'time':      'LightlineDate',
        \   'fileformat': 'LightlineFileformat',
        \   'filetype': 'LightlineFiletype',
        \   'fileencoding': 'LightlineFileencoding',
        \   'mode': 'LightlineMode'
        \ }
    \ }
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%p:t') ? expand('%p:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
" ステータスラインに日時を表示する
function! LightlineDate()
  return winwidth(0) > 70 ? strftime("%H:%M ")
endfunction


" syntax情報とカラー情報を取得
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()
" typescript colorscheme change
autocmd ColorScheme * highlight typescriptMember ctermfg=217
autocmd ColorScheme * highlight typescriptClassName ctermfg=229
autocmd ColorScheme * highlight Comment ctermfg=154

" colorscheme
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
" colorscheme neodark
let g:neodark#terminal_transparent = 1 " default: 0
" colorscheme material

" ale

nnoremap <Space>sym :ALESymbolSearch<CR>
nnoremap <Space>H :ALEHover<CR>
nnoremap gd :ALEGoToDefinitionInTab<CR>
nnoremap <C-j> :ALEFindReferences<CR>
let g:ale_completion_enabled = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_linters = {
      \ 'html': [],
      \ 'css': ['stylelint'],
      \ 'javascript': ['eslint', 'tsserver'],
      \ 'javascript.jsx': ['eslint', 'tsserver'],
      \ 'typescript': ['tslint', 'tsserver'],
      \ 'typescript.tsx': ['tslint', 'tsserver'],
      \ 'ruby': ['rubocop', 'solargraph', 'ruby'],
      \ }


" indent-guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=0

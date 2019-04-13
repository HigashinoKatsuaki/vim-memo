# vim 自分用メモ
## 参考URL一覧
本語ドキュメント
https://vim-jp.org/vimdoc-ja/ 
名無しさんの参考ページ
http://nanasi.jp/ 
よく使われるセットオプションランキング
https://qiita.com/reireias/items/230c77b3ff5575832654 
日本語公式ドキュメントセットオプション一覧
https://vim-jp.org/vimdoc-ja/options.html
## 最初にやることリスト
### インストール(参考URL:https://vim-jp.org/vimdoc-ja/usr_90.html)
~~~
git clone https://github.com/vim/vim.git
cd vim/src
make
~~~
### ドキュメント日本語化(参考URL:http://nanasi.jp/articles/howto/help/help_ja.html) 
### vim-plug導入
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  * vimdoc-ja-masterは上記URLからダウンロードし解凍したもの  
## set optionで気になったやつ・よく使いそうなやつ 
- 'autochdir' 毎回作業ディレクトリが変更される。開かれた／選択されたファイルを含んでいるディレクトリがカレントディレクトリになる。  
- 'autoindent' オートインデント   
- 'background=dark'  ダークモード的なやつ？（たぶん、知らんけど）  
- 'belloff=all' 警告音をオフにする  
- 'cindent'  
  - Cプログラムファイルの自動インデントを行う。挿入モードで再インデントを引き起こす文字列を指定するにはオプション 'cinkeys' を、好みのインデントスタイルを設定するには 'cinoptions' を参照。'indentexpr' の値が空でないなら、それは 'cindent' の設定を上書きする。'lisp' がオフで、'indentexpr' と 'equalprg' の両方の値が空なら、"=" によるインデントはこのアルゴリズムを使い、外部プログラムを使わない。C-indenting を参照。'cindent' の動作が気に入らないならば、'smartindent' か 'indentexpr' を試してみること。(vim日本語ドキュメント原文ママ）
- 'clipboard=unnamed' 無名レジスタじゃなくてクリップボード使うやつ
- 'complete' キーワード検索の対象となる範囲を設定できる  
- 'encoding' エンコード指定  
- 'expandtab' tabを空白にする  
-j 'fileignorecase' ファイル名の大文字小文字を区別しない

## Plugin install
:PlugInstall
:PlugStatus

### ag install
$ rpm -ivh http://swiftsignal.com/packages/centos/6/x86_64/the-silver-searcher-0.14-1.el6.x86_64.rpm
# or 
$ rpm -ivh http://swiftsignal.com/packages/centos/6/i386/the-silver-searcher-0.14-1.el6.i686.rpm

# vim 自分用メモ
## 参考URL一覧
https://vim-jp.org/vimdoc-ja/
http://nanasi.jp/
https://qiita.com/reireias/items/230c77b3ff5575832654
## 最初にやることリスト
インストール(参考URL:https://vim-jp.org/vimdoc-ja/usr_90.html)
~~~
git clone https://github.com/vim/vim.git
cd vim/src
make
~~~
ドキュメント日本語化(参考URL:http://nanasi.jp/articles/howto/help/help_ja.html)
  * vimdoc-ja-masterは上記URLからダウンロードし解凍したもの
## set optionで気になったやつ・よく使いそうなやつ
'autochdir' 毎回作業ディレクトリが変更される。開かれた／選択されたファイルを含んでいるディレクトリがカレントディレクトリになる。
'autoindent' オートインデント
'background=dark'  ダークモード的なやつ？（たぶん、知らんけど）
'belloff=all' 警告音をオフにする
'cindent'
  Cプログラムファイルの自動インデントを行う。挿入モードで再インデントを
  引き起こす文字列を指定するにはオプション 'cinkeys' を、好みのインデン
  トスタイルを設定するには 'cinoptions' を参照。
  'indentexpr' の値が空でないなら、それは 'cindent' の設定を上書きする。
  'lisp' がオフで、'indentexpr' と 'equalprg' の両方の値が空なら、"=" に
  よるインデントはこのアルゴリズムを使い、外部プログラムを使わない。
  C-indenting を参照。
  'cindent' の動作が気に入らないならば、'smartindent' か 'indentexpr' を
  試してみること。(vim日本語ドキュメント原文ママ）
'clipboard=unnamed' 無名レジスタじゃなくてクリップボード使うやつ
'complete' キーワード検索の対象となる範囲を設定できる

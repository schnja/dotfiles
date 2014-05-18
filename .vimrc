"vi非互換モード
set nocompatible 

"#######################

"プラグイン関係 

"#######################
filetype off
 
 "vundleの設定
 set rtp+=~/.vim/vundle.git/
 call vundle#rc()

"プラグイン
Bundle 'ZenCoding.vim'
Bundle 'surround.vim'
Bundle 'taglist.vim'

"######################
"Zen-Coding
"#######################

"lang=en をjaに
let g:user_zen_settings = {
\ 'lang' : 'ja',
\}

"#######################
" 表示関係
"#######################

"行番号表示
set number 

"モード表示
set showmode 

"編集中のファイル名を表示
set title 

"ルーラーの表示
set ruler 

"入力中のコマンドをステータスに表示する
set showcmd 

"括弧入力時の対応する括弧を表示
set showmatch 

"ステータスラインを常に表示
set laststatus=2 


"#######################

" プログラミング補助

"#######################

syntax on "カラー表示

set smartindent "オートインデント

" tab関連

set expandtab "タブの代わりに空白文字挿入

set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース

" ファイルを開いた際に、前回終了時の行で起動

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

"(),[],{},<>,””,’’,“入力+()の中にカーソル戻す
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap “” “”<Left>
imap "" ""<Left>
imap <> <><Left>
imap “ “<Left>

"#######################

" 検索関係

"#######################

"検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase 

"検索文字列に大文字が含まれている場合は区別して検索する
set smartcase 

"検索時に最後まで行ったら最初に戻る
set wrapscan 

"検索文字列入力時に順次対象文字列にヒットさせない
set noincsearch 

"検索結果文字列の非ハイライト表示
set nohlsearch 

"#######################

" カラー設定

"#######################


" 輝度を高くする
let g:solarized_visibility = "high"

" コントラストを高くする
let g:solarized_contrast = "high"

"背景色の選択 "dark" or "light"
set background=dark

" カラースキーマを Solarized にする
colorscheme solarized

" カラースキーマを molokai にする
"colorscheme molokai


"#######################

" バックアップ・スワップ設定

"#######################

set backup
set backupdir=~/.vim/tmp
set swapfile
set directory=~/.vim/tmp


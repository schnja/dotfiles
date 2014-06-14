if has('gui_macvim')
  set showtabline=2       " タブを常に表示
  set transparency=1      " 透明度
  set noimdisable         " IME OFF
  set guioptions-=T       " ツールバー非表示
  set antialias           " アンチエイリアス
  set tabstop=4           " タブサイズ
  set number              " 行番号表示
  set nobackup            " バックアップなし
  set visualbell t_vb=    " ビープ音なし

  colorscheme molokai     " カラースキーマ
  "colorscheme desert     " カラースキーマ
  set columns=100         " 横幅
  set lines=35            " 行数
  set linespace=2         " 行間 (point、Osaka 以外のフォントは 2 ぐらいを設定)
  set nowrapscan          " 検索をファイルの先頭へループしない

  " フォント設定
  "set guifontwide=Osaka:h12
  set guifont=ゆたぽん（コーディング）:h16
  "set guifont=RictyDiscord-Regular:h16
  "set guifont=Osaka-Mono:h14
  
endif

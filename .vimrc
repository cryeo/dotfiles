" oh-my-zsh
call pathogen#infect()

let g:hybrid_use_Xresources = 1
set background=dark
" colorscheme hybrid
colorscheme solarized
let g:solarized_termcolor=256

" Common -------------------------------
set nocompatible                " vi互換モードをオフ

" File ---------------------------------
set autoread                " 更新時自動再読込み
set hidden              " 編集中でも他のファイルを開けるようにする
set noswapfile              " スワップファイルを作らない
set nobackup                " バックアップを取らない
autocmd BufWritePre * :%s/\s\+$//ge " 保存時に行末の空白を除去する

syntax on               " シンタックスカラーリングオン

" Indent -------------------------------
" tabstop:                Tab文字を画面上で何文字分に展開するか
" shiftwidth:             cindentやautoindent時に挿入されるインデントの幅
" softtabstop:                Tabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set tabstop=4 shiftwidth=4 softtabstop=0
set autoindent smartindent        " 自動インデント，スマートインデント

" Assist imputting ---------------------
set backspace=indent,eol,start        " バックスペースで特殊記号も削除可能に
set formatoptions=lmoq            " 整形オプション，マルチバイト系を追加
set whichwrap=b,s,h,s,<,>,[,]     " カーソルを行頭、行末で止まらないようにする
set clipboard=unnamed,autoselect     " バッファにクリップボードを利用する


" Complement Command -------------------
set wildmenu              " コマンド補完を強化
set wildmode=list:full            " リスト表示，最長マッチ

" Search -------------------------------
set wrapscan              " 最後まで検索したら先頭へ戻る
set ignorecase                " 大文字小文字無視
set smartcase             " 大文字ではじめたら大文字小文字無視しない
set incsearch             " インクリメンタルサーチ
set hlsearch              " 検索文字をハイライト
nnoremap <ESC><ESC> :nohlsearch<CR>       " 検索結果のハイライトと取り消し

" View ---------------------------------
set showmatch             " 括弧の対応をハイライト
set showcmd               " 入力中のコマンドを表示
set showmode              " 現在のモードを表示
set number                " 行番号表示
set nowrap                " 画面幅で折り返さない
set list                  " 不可視文字表示
set listchars=tab:>\          " 不可視文字の表示方法
set notitle               " タイトル書き換えない
set scrolloff=5               " 行送り
set display=uhex              " 印字不可能文字を16進数で表示

hi ZenkakuSpace gui=underline guibg=DarkBlue cterm=underline ctermfg=LightBlue " 全角スペースの定義
match ZenkakuSpace /　/           " 全角スペースの色を変更


hi LineNr ctermbg=0 ctermfg=0 " 行番号の色を設定
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline " 行番号の色を設定
hi clear CursorLine


set smarttab
set expandtab

set hlsearch

:set mouse=a
syntax on

"Mac ClipBoard
"vmap <silent> sy :!pbcopy; pbpaste<CR>
"map <silent> sp <esc>o<esc>v :!pbpaste<CR>

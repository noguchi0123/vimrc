"written by T.Noguchi

set number
set ruler
syntax on
set mouse=a
set showmatch
set hlsearch
set showcmd
set guioptions+=a
set ttymouse=xterm2
"""""""""""""""""""""""""""
"プラグインのセットアップ"
"""""""""""""""""""""""""""
"""NeoBundle"""
set nocompatible               " be iMproved
filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
 " call neobundle#rc(expand('~/.vim/bundle/'))
  call neobundle#begin(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim' "unite.vimで最近使ったファイルの表示

NeoBundle 'Shougo/neomru.vim'
" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
 """"""""""""""""""""""""
NeoBundle 'tpope/vim-fungitive'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
map <C-t> :NERDTreeToggle<CR>
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
"let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J>　unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J>　unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K>　unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K>　unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
filetype indent on
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Gitを便利に使う
NeoBundle 'tpope/vim-fugitive'
"
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow
"
" " ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}


""Runtime Path Manipulation
execute pathogen#infect()
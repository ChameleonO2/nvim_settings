"keybind
inoremap <C-j><C-j> <ESC>A
inoremap <C-j>; <ESC>A;<ESC>
inoremap <C-j>j <ESC>



" dein settings {{{
if &compatible
  set nocompatible
endif
" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir


if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " 管理するプラグインを記述したファイル 
  let s:toml = '~/.config/nvim/dein.toml'
  let s:denitetoml = '~/.config/nvim/denite.toml'
  let s:lazy_toml = '~/.config/nvim/dein_lazy.toml'

  call dein#load_toml('~/.config/nvim/dein.toml',{'lazy': 0})
  call dein#load_toml(s:denitetoml,{'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
" }}}

"""neadtree setting{{{
	nnoremap <leader>e:VimFilerExplore -split -windowth=30 -find -no-quit<Cr>
"""}}}

"""vim settings
set noswapfile
set smartindent
set number
set clipboard=unnamed,unnamedplus
set cursorline
set laststatus=2
set statusline=2
set showcmd
set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileencodings=utf-8
set tabstop=3
set shiftwidth=3
set backspace=indent,eol,start
set smarttab
set mouse=a
set t_Co=256
set termguicolors
set title
if exists('&ambiwidth')
	set ambiwidth=double
endif
colorscheme evening

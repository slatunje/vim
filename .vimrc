
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: seal la-tunje
"
" Sections:
"
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Command mode related
"    -> Moving around, tabs and buffers
"    -> Statusline
"    -> Parenthesis/bracket expanding
"    -> General Abbrevs
"    -> Editing mappings
"
"    -> Cope
"    -> Minibuffer plugin
"    -> Omni complete functions
"    -> JavaScript section
"    -> PHP section
"
" Plugins_Included:
"
"     > minibufexpl.vim - http://www.vim.org/scripts/script.php?script_id=159
"       Makes it easy to get an overview of buffers:
"           info -> :e ~/.vim_runtime/plugin/minibufexpl.vim
"
"     > bufexplorer - http://www.vim.org/scripts/script.php?script_id=42
"       Makes it easy to switch between buffers:
"           info -> :help bufExplorer
"
"     > yankring.vim - http://www.vim.org/scripts/script.php?script_id=1234
"       Emacs's killring, useful when using the clipboard:
"           info -> :help yankring
"
"     > surround.vim - http://www.vim.org/scripts/script.php?script_id=1697
"       Makes it easy to work with surrounding text:
"           info -> :help surround
"
"     > snipMate.vim - http://www.vim.org/scripts/script.php?script_id=2540
"       Snippets for many languages (similar to TextMate's):
"           info -> :help snipMate
"
"     > mru.vim - http://www.vim.org/scripts/script.php?script_id=521
"       Plugin to manage Most Recently Used (MRU) files:
"           info -> :e ~/.vim_runtime/plugin/mru.vim
"
"     > Command-T - http://www.vim.org/scripts/script.php?script_id=3025
"       Command-T plug-in provides an extremely fast, intuitive mechanism for opening filesa:
"           info -> :help CommandT
"           screencast and web-help -> http://amix.dk/blog/post/19501
"
"
"  Revisions:
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Pathogen
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	
execute pathogen#infect()

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => General
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	" Sets how many lines of history VIM has to remember

set history=700

	" Enable filetype plugin

filetype plugin on
filetype indent on

	" Set to auto read when a file is changed from the outside

set autoread

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => VIM mapping
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	" With a map leader it's possible to do extra key combinations
	" like <leader>w saves the current file

let mapleader = ","
let g:mapleader = ","

	" Fast saving

nmap <leader>w :w!<cr>

	" Fast editing of the .vimrc

map <leader>e :e! ~/.vimrc<cr>

	" When vimrc is edited, reload it

autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc


	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => VIM User Interface
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	" Line numbering. On with "set nu" off with "set nonu" 

set nu 

	" Set syntax on

syntax on

	" View command as you type

set showcmd

	" Indent automatically depending on filetype

filetype indent on
set autoindent

	" Case insensitive search

set ic

	" Higlhight search

set hls

	" Wrap text instead of being on one line

set lbr


	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Colors and Fonts
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	" Set default color (delek)

colorscheme wombat


	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Files, Backups and Undo
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Text, Tab and Indent
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	""""""""""""""""""""""""""""""
	" => Visual Mode Related
	""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Command Mode Related
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Moving around, Tabs and Buffers
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	""""""""""""""""""""""""""""""
	" => Statusline
	""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Parenthesis / Bracket Expanding
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => General Abbrevs
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Editing Mappings
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Omni Complete Functions
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Spell Checking
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	"     Pressing ,ss will toggle and untoggle spell checking

map <leader>ss :setlocal spell!<cr>

	" Shortcuts using <leader>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

	"""""""""""""""""""""""""""""""
	" => JavaScript Section
	"""""""""""""""""""""""""""""""

	" => jQuery

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

	"""""""""""""""""""""""""""""""
	" => PHP Section
	"""""""""""""""""""""""""""""""



	""""""""""""""""""""""""""""""
	" => Vim Grep
	""""""""""""""""""""""""""""""

"let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
"set grepprg=/bin/grep\ -nH

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => Plugins
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	" => Command-T mappings

noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

	" => Markdown to HTML
	"nmap <leader>md :%!/home/seal/Bin/markdown.pl --html4tags <cr>

	" => CloseTag to load only for html/xml like files.

autocmd FileType php,xml,html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

	" => Tagbar Config

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

	" => Yanking

let g:yankring_history_file = '.history_vim'

	" =>  NERDTree
	"
	" When gvim is started

autocmd VimEnter * NERDTree

	" When open windows are empty
	"

	" When there are no active buffer left

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

	" When the NERDTree buffer is the only open window left. Quit all.

function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction"

	" What keys are set for mappings
	"

	" =>  EasyMotion 
	"
	" Mapping
	
map <Leader><Leader>w \w

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => MISC
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

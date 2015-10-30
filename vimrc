execute pathogen#infect('/home/vagrant/.vimbundles')
" Include user's local vim config
"if filereadable(expand("~/.vimrc.local"))
"  source ~/.vimrc.local
"endif

"---[ Profiler ]---------------------------------------------------------- {{{
let g:startup_profile_csv = "/tmp/profile_vim.csv"
runtime macros/startup_profile.vim
"}}}
"---[ General ]----------------------------------------------------------- {{{
let mapleader = "\<Space>"                 " remap Leader
let g:mapleader = "\<Space>"               " remap Leader
let $LANG = 'en'
set autowrite                       " Automatically save before commands like :next and :make
set encoding=utf-8 nobomb
setglobal fenc=utf8
set history=100                     " keep lines of command line history
set ignorecase                      " Do case insensitive search matching
set smartcase
set nocompatible                    " Usar modo Vim
set showcmd                         " Show (partial) command in status line.
syntax on
set synmaxcol=1000                  " limit sintax color to 1000 columns... improve speed
let $S = $HOME . '/vimfiles/sessions'
filetype plugin indent on           " Enable file type detection.
set tags=tags,vim_tags;~/           " Look for the file in the current directory, then south until you reach home.
set ttimeout
set timeoutlen=500                  " Quick timeouts on key combinations.
set ttimeoutlen=500
set hidden                          " permit switch buffers without save it before
" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways
" Use modeline overrides
set modeline
set modelines=5
" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

"}}}
"---[ File / Bakcups ]---------------------------------------------------- {{{
set nobackup                " remove backups after close
set backupcopy=no           " keep a backup file
set backupdir=/tmp
set directory=/tmp
set makeef=error.err
set nowb
set noswapfile
set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

"}}}
"---[ VIM UI]------------------------------------------------------------- {{{
set lsp=0                   " space it out a little more (easier to read)
set wildmenu                " turn on wild menu
set wildmode=list:longest,list:full
"Ignore these files when completing names and in Explorer
set wildignore+=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.aux,*.out,*.toc,*.pyc,.DS_Store
set wildignore+=*.jpg,*.png,*.xpm,*.gif,*.psd
set wildignore+=*.zip,*.bz2,*.tar,*.gz,*.rar
" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Ignore rails temporary asset caches
set wildignore+=*/tmp/*
set wildignore+=*/public/assets/*
" Ignore custom folders
set wildignore+=*/resources/*
" Ignore node modules
set wildignore+=node_modules/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*,*.bak
" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
set ruler                   " Always show current positions along the bottom
set cmdheight=2             " the command bar is 2 high
"set number                  " turn on line numbers
"set relativenumber          " turn relative numbers on"
set numberwidth=5
set lazyredraw              " do not redraw while running macros (much faster) (LazyRedraw)
set ttyscroll=3
set ttyfast
set hid                     " you can change buffer without saving
"set backspace=2             " make backspace work normal
set backspace=indent,eol,start
set whichwrap+=<,>,h,l      " backspace and cursor keys wrap to
set mouse=a                 " use mouse everywhere
set shortmess=atI           " shortens messages to avoid 'press a key' prompt
set report=0                " tell us when anything is changed via :...
set fillchars=vert:\ ,stl:\ ,stlnc:\      " make the splitters between windows be blank
set wmh=0                   " lineas minimas que se ven al maximizar una ventana
set t_Co=256                " Configura la consola a 256 colores
set title                   " set terminal title
"set virtualedit=all         " permite mover el cursor por todos lados en modo comando
set cursorline              " colorea la linea actual del cursor
if has('gui_running')
  set guioptions+=m           " menu bar
  set guioptions+=g           " grey menu disabled menu items
  set guioptions+=t           " tearoff menus
  set guioptions-=T           " disable toolbar
  set guioptions+=a           " Vim selection to OS clipboard, modeless
  set guioptions+=c           " console dialogs
  set guioptions-=l           " left scrollbar
  set guioptions-=L           " left scrollbar
  set guioptions-=r           " right scrollbar
  set guioptions-=b           " bottom scrollbar
  if has('gui_macvim')
    set fuoptions=maxvert,maxhorz
  endif
endif

set guicursor=n-v-c:block-Cursor    " set block
set guicursor+=a:blinkon0           " remove blinking
set guicursor+=i:ver100             " set block for insert mode
"}}}
"---[ Visual Cues ]------------------------------------------------------- {{{
set showmatch               " show matching brackets
set mat=5                   " how many tenths of a second to blink matching brackets for
set hlsearch                " highlight searchs
set incsearch               " BUT do highlight as you type you search phrase
set listchars=tab:\>-,trail:.,extends:>,precedes:<,eol:$,nbsp:º " what to show when I hit :set list
set showbreak=↪
"set lines=45
"set columns=120
set so=10                   " Keep 10 lines (top/bottom) for scope
set novisualbell            " don't blink
set noerrorbells            " no noises
set t_vb=                   " Evita los beeps y flashear la pantalla
"set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*%<%F%=\ [%M%n%R%H%W]\ %{&ff}\ %y\ %-19(%3l,%02c%03V%)[%o,%O]\ 0x%02B'%03b'  "Formato de la linea de status
"set statusline=%*%<%F%=\ [%M%n%R%H%W]\ %{&ff}\ %y\ %-19(%3l,%02c%03V%)[%o,%O]\ 0x%02B'%03b'  "Formato de la linea de status
set laststatus=2            " always show the status line
"}}}
"---[ Text Formatting/Layout ]-------------------------------------------- {{{
set fo=tcrqn                " See Help (complex)
"set formatoptions=qroct     " Correct indentation after opening a phpdocblock and automatic * on every line
set autoindent              " autoindent
set smartindent             " smartindent
set shiftround              " indent to the closest shiftwidth
set cindent                 " do c-style indenting
set tabstop=2               " tab spacing (settings below are just to unify it)
set softtabstop=2           " unify
set shiftwidth=2            " unify
set nowrap                  " do not wrap lines
set smarttab                " use tabs at the start of a line, spaces elsewhere
set expandtab               " tabs to spaces
set scrolljump=3            " Jump 5 lines when running out of the screen
set scrolloff=3             " Indicate jump out of the screen when 3 lines before end of the screen
set pastetoggle=<F3>        " Paste toggle - when pasting something in, don't indent.
set tw=500                  " Line with
"}}}
"---[ Folding ]----------------------------------------------------------- {{{
" Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
set foldenable              " Turn on folding
set foldmethod=indent       " Make folding indent sensitive
"set foldmethod=marker       " Enable folding by fold markers
set foldnestmax=10
set foldlevelstart=3        " where start to fold a new buffer
set foldlevel=1             " Don't autofold anything (but I can still fold manually)
set foldclose=all           " Autoclose folds, when moving out of them
set nofoldenable            " don't fold by default
"}}}
"---[ Theme / Colors ]---------------------------------------------------- {{{
if has("gui_running")
  if has('win32')
    " buuu
  elseif has('mac')
    set guifont=Source\ Code\ Pro\ Light:h14 "Menlo:h15
    "set guifont=InputMono\ ExLight:h13 "Menlo:h15
  elseif has('unix')
    set guifont=Inconsolata\ 12
  endif
  "colorscheme molokai2 "landscape molokai jellybeans+
  colorscheme molokai3 "landscape molokai jellybeans+
else
  colorscheme molokai3 "landscape molokai jellybeans+
endif

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

"}}}
"---[ Plugins ]----------------------------------------------------------- {{{
"------[ File Explorer ]-------------------------------------------------- {{{
let g:explVertical=1        " should I split verticially
let g:explWinSize=40        " width of 35 pixels
"}}}
"------[ Win Manager ]---------------------------------------------------- {{{
let g:winManagerWidth=35    " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it
"}}}
"------[ CTags ]---------------------------------------------------------- {{{
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'           " Location of ctags
let Tlist_Sort_Type = "name"            " order by
let Tlist_Use_Right_Window = 1          " split to the right side of the screen
let Tlist_Compart_Format = 1            " show small meny
let Tlist_Exist_OnlyWindow = 1          " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0      " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0        " Do not show folding tree
let g:ctags_cmd = '"'.expand('~').'/bin/mtags"'
command! Ctags silent execute '!'.g:ctags_cmd.' *.'.expand('%:e')
"}}}
"------[ Matchit ]-------------------------------------------------------- {{{
let b:match_ignorecase = 1

"}}}
"------[ Perl ]----------------------------------------------------------- {{{
let perl_extended_vars=1      " highlight advanced perl vars inside strings
"}}}
"------[ VimDiff ]-------------------------------------------------------- {{{
set diffopt=filler,iwhite
"}}}
"------[ Supertab ]------------------------------------------------------- {{{
"}}}
"------[ airline ]-------------------------------------------------------- {{{
let g:airline_enable_syntastic=1
let g:airline_theme='simple'
let g:airline_section_x = '%{PencilMode()}'
"}}}
"------[ Syntastic    ]--------------------------------------------------- {{{
let g:syntastic_debug = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_signs=1
"let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': ['scss'] }

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_args="--config .jshintrc"
"let g:syntastic_javascript_gjslint_args=" --nojsdoc --max_line_length 200 "
"let g:syntastic_ruby_checkers = ['mri', 'rubocop']
"}}}
"------[ GitGutter    ]--------------------------------------------------- {{{
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0
"}}}
"------[ Mark ]----------------------------------------------------------- {{{
let g:mwDefaultHighlightingPalette = 'maximum'
let g:mwDefaultHighlightingNum = 10
nmap <Plug>IgnoreMarkSearchNext <Plug>MarkSearchNext
nmap <Plug>IgnoreMarkSearchPrev <Plug>MarkSearchPrev

"}}}
"------[ SmartInput ]----------------------------------------------------- {{{
call smartinput#map_to_trigger('i', '#', '#', '#')
call smartinput#define_rule({
\   'at': '\%#',
\   'char': '#',
\   'input': '#{}<Left>',
\   'filetype': ['ruby'],
\   'syntax': ['Constant', 'Special'],
\ })

call smartinput#map_to_trigger('i', '<Bar>', '<Bar>', '<Bar>')
call smartinput#define_rule({
\   'at': '\({\|\<do\>\)\s*\%#',
\   'char': '<Bar>',
\   'input': '<Bar><Bar><Left>',
\   'filetype': ['ruby'],
\ })
"}}}
"------[ NERDTree ]------------------------------------------------------- {{{
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let NERDTreeQuitOnOpen=1
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeAutoCenterThreshold=5
let NERDTreeHighlightCursorline=1
let NERDTreeWinSize=50
"}}}
"------[ Command-T ]------------------------------------------------------ {{{
let g:CommandTMaxHeight=20
"}}}
"------[ CTags ]---------------------------------------------------------- {{{
"}}}
"------[ ACK ]------------------------------------------------------------ {{{
let g:ackprg = 'ag --nogroup --nocolor --column'

"}}}
"------[ CtrlP ]---------------------------------------------------------- {{{
let g:ctrlp_working_path_mode = 'ra'
" CtrlP
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .map
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
"}}}
"------[ Lighline ]------------------------------------------------------- {{{
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], ['filename'], ['ctrlpmark'] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! MyModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! MyFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction


let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

"}}}
"------[ UltiSnipets ]---------------------------------------------------- {{{
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]

"}}}
"------[ Vim Pencil ]----------------------------------------------------- {{{
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
"}}}
"------[ LargeFile]------------------------------------------------------- {{{
let g:LargeFile= 5  " MB to cosidere large file
"}}}
"------[ GoTags ]--------------------------------------------------------- {{{
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"}}}
"------[ Vim-go ]--------------------------------------------------------- {{{
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
kj
"}}}
"------[ NeoComplete ]---------------------------------------------------- {{{
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete_enable_fuzzy_completion_start_length = 3
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 10
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#enable_auto_select = 0

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'"
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
"let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" see :h ft-ruby-omni
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1

let g:ruby_path=['/Users/nelson/.rbenv/rbenv.d/exec/gem-rehash',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/site_ruby/2.1.0',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/site_ruby/2.1.0/x86_64-darwin14.0',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/site_ruby',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/vendor_ruby/2.1.0',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin14.0',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/vendor_ruby',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/2.1.0',
               \ '/Users/nelson/.rbenv/versions/2.1.3/lib/ruby/2.1.0/x86_64-darwin14.0']

"}}}
"------[ Enable omni completion. ]---------------------------------------- {{{
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python         setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType ruby           setlocal omnifunc=rubycomplete#Complete
"}}}
"}}}
"---[ Key Mappings ]------------------------------------------------------ {{{

"disable cursor keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

nnoremap º %

nnoremap <leader>1 :set cursorline!<CR>
nnoremap <leader>2 :set cursorcolumn!<CR>
nnoremap <Leader>4 :!bash
nnoremap <Leader>5 :set invpaste<CR>
nnoremap <Leader>6 :set invnumber<CR>
nnoremap <Leader>7 :set invhlsearch<CR>
nnoremap <Leader>8 :set invlist<CR>
nnoremap <Leader>9 :set invrelativenumber<CR>

"------------- mueve y maximiza entre ventanas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap ' `
nnoremap ` '

" select the last changed/pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
" Make Ctrl+J join lines in insert mode
inoremap <C-j> <C-o>J

nnoremap <Leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <Leader>f :execute 'NERDTreeFind '<CR>
nnoremap <Leader>x :BufExplorer<CR>
nnoremap <Leader>z :CtrlPBuffer<CR>
nnoremap <Leader>w :CtrlPMRU<CR>
"Fast reloading of the .vimrc
nnoremap <Leader>s :source ~/.vimrc<cr>
"Fast editing of .vimrc
nnoremap <Leader>v :e! ~/.vimrc<cr>
"Remove the Windows ^M
nnoremap <Leader>0 mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
nnoremap <Leader>. :lne<cr>
nnoremap <Leader>- :lp<cr>
nnoremap <Leader>c :botright cw 10<cr>
nnoremap <Leader>u :GundoToggle<cr>
nnoremap <Leader><cr> :noh<cr>
" Close the current buffer
nnoremap <Leader>bd :Bclose<cr>
" Close all the buffers
nnoremap <Leader>ba :1,300 bd!<cr>
"Pressing ,ss will toggle and untoggle spell checking
nnoremap <Leader>ss :setlocal spell!<cr>
"nnoremap <Leader>rt :!ctags --extra=+f -R *<CR><CR>
nnoremap <Leader>rt :!ctags --extra=+f -R --exclude=.git --exclude=log --exclude=.sql *<CR><CR>
nnoremap <C-\> :tnext<CR>
"rails shortcuts
nnoremap <Leader>rc :Rcontroller<cr>
nnoremap <Leader>rv :Rview<cr>
nnoremap <Leader>rm :Rmodel<cr>
nnoremap <Leader>rh :Rhelper<cr>
"adjust indentation on the file
nnoremap <Leader>i :call <SID>Preserve("normal gg=G")
" give the syntax highlight id for the word under the cursor
nnoremap <Leader>00 :echo synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>
" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
nnoremap <leader>09 :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
nnoremap <leader>08 :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>

"toggle between last two buffers with comma-comma
nnoremap <leader><leader> :b#<cr>
"set current window proportions
nnoremap <Leader>h :exec "vertical resize " . ((&columns/4)*3)<CR>
noremap <leader>t  :TagbarToggle<CR>
vnoremap <silent> <Enter> :EasyAlign<cr>
" Visually select the text that was last edited/pasted. From http://vimcasts.org/episodes/bubbling-text/
nnoremap gV `[v`]
" Allow saving of files as sudo when I forgot to start vim using sudo.
cnoremap w!! w !sudo tee > /dev/null %
" copy and paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
" move to end of paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
nnoremap çss :SyntasticCheck<CR>
nnoremap çst :SyntasticToggleMode<CR>
inoremap <M-Space> <Space>

if exists('$TMUX')
  nnoremap <unique> <leader>tt :!tmux split-window -v -p 15<cr>
endif


"Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
nnoremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired remap configuration
noremap ç [
noremap Ç ]
onoremap ç [
onoremap Ç ]
xnoremap ç [
xnoremap Ç ]


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"  CommandLine Window
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" enter cmdline-window by default with :, / and ?
"nnoremap : q:i
"vnoremap : q:i
"nnoremap / q/i
"vnoremap / q/i
"nnoremap ? q?i
"vnoremap ? q?i
" allow leaving cmdline-window with <ESC>
"au CmdwinEnter * nnoremap <buffer> <ESC> :q<cr>
" allow normal cmdline :, / and ?
"nnoremap q: :
"vnoremap q: :
"nnoremap q/ /
"vnoremap q/ /
"nnoremap q? ?
"vnoremap q? ?

command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt() " ------------------------------- {{{
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction
" }}}
function! <SID>Preserve(command) " ------------------------------- {{{
  " Execute a command preserving the cursor position
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
" }}}
function! NeatFoldText() " --------------------------------------- {{{
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()
" }}}
" DiffOrig --------------------------------------------------------- {{{
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif
" }}}
"}}}
"---[ Auto commands ]----------------------------------------------------- {{{
"no change tab characters for this files
autocmd FileType make       setlocal noexpandtab
autocmd FileType python     setlocal noexpandtab
autocmd Filetype gitcommit  setlocal tw=68 spell
autocmd Filetype text       setlocal tw=76 spell
" Autocomplete ids and classes in CSS
autocmd FileType css,scss   setlocal iskeyword=@,48-57,_,-,?,!,192-255
" make uses real tabs
autocmd FileType make       setlocal noexpandtab
" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
autocmd FileType python     setlocal softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
autocmd FileType help       setlocal ai fo+=2n | silent! setlocal nospell

" Cuando se carga un buffer con ruby se puede chequear la sintaxis con <Leader>w
augroup nfxprg
  autocmd!
  autocmd BufEnter *.rb nnoremap <buffer> <Leader>rw :w<CR>:!ruby -cw %<CR>
  autocmd BufEnter *.rb nnoremap <buffer> <Leader>rr :w<CR>:!ruby -w %<CR>
  autocmd BufRead,BufNewFile *.mote setfiletype mote
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd BufNewFile,BufRead *.atom setfiletype xml
  autocmd BufNewFile,BufRead *.emblem setfiletype slim
  autocmd BufEnter *.xml set equalprg=xmllint\ --format\ --recover\ -
  autocmd BufEnter *.json set equalprg=python\ -mjson.tool
  " Remove trailing space before save
  autocmd BufWritePre * :call <SID>Preserve("%s/\\s\\+$//e")
  " Make those debugger statements painfully obvious
  autocmd BufEnter *.rb syn match error contained "\<binding.pry\>"
  autocmd BufEnter *.rb syn match error contained "\<debugger\>"
  " autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
  " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
  autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
augroup END

"}}}

"runtime! ftdetect/*.vim
" % to bounce from do to end etc.
runtime macros/matchit.vim

" vim:foldmethod=marker:foldlevel=0:foldlevelstart=0:foldenable

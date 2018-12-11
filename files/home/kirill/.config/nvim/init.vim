call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc', {'do': 'make'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'fl0wsnake/vim-xkbswitch'
" syntax
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sleuth'
" Plug 'ciaranm/detectindent'
Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fszymanski/deoplete-emoji'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
Plug 'vim-scripts/loremipsum'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'arecarn/vim-selection'
Plug 'arecarn/vim-crunch'
Plug 'tpope/vim-endwise'
Plug 'Yggdroot/indentLine'
Plug 'michaeljsmith/vim-indent-object'
" ultisnips
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'honza/vim-snippets'
" javascript
Plug 'Galooshi/import-js'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
" typescript
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/tsuquyomi'
" elm
Plug 'pbogut/deoplete-elm'
Plug 'ElmCast/elm-vim'
" vuejs
Plug 'posva/vim-vue'
" jade/pug
Plug 'digitaltoad/vim-pug'
" haskell
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim'
" org-mode
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
" python
Plug 'python-mode/python-mode'
" c++
Plug 'JBakamovic/yavide'
" i3
Plug 'PotatoesMaster/i3-vim-syntax'
" xml
Plug 'othree/xml.vim'
" LaTeX
Plug 'lervag/vimtex'
" notes
Plug 'vimwiki/vimwiki'
" markdown
" Plug 'godlygeek/tabular'
" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
" api blueprint
Plug 'kylef/apiblueprint.vim'
" purescirpt
Plug 'purescript-contrib/purescript-vim'
" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" kotlin
Plug 'udalov/kotlin-vim'
" yaml
Plug 'stephpy/vim-yaml'
call plug#end()

setl ft=text
set tabstop=4
set shiftwidth=4
set expandtab
let g:UltiSnipsUsePythonVersion = 3
" auto layout switching
if $DISPLAY == ""
  let g:XkbSwitchEnabled = 0
else
  let g:XkbSwitchEnabled = 1
  let g:XkbSwitchIMappings = ['ru']
endif
" leaders
let mapleader="\<Space>"
let maplocalleader=","
" sets
filetype plugin on
syntax on
set title 
" set titlestring=%<%F%=%l/%L-%P 
set titlestring=%{ProjectPath(expand('%:p'))}
set titlelen=70
set expandtab
set breakindent
set mouse=a
set timeoutlen=1500
set linebreak
set noswapfile
set ignorecase
set smartcase
set updatetime=250
set shortmess+=c
set completeopt-=preview
set completeopt+=noinsert
set cursorline
set nocursorcolumn
set lazyredraw
set nohlsearch
set helpheight=99999
set clipboard=unnamedplus
set noshowmode
set hidden
set t_8f=^[[38;2;%lu;%lu;%lum        " set foreground color
set t_8b=^[[48;2;%lu;%lu;%lum        " set background color
colorscheme gruvbox
set background=dark
set number
set relativenumber
set scrolloff=3
set autoread
" for termite/st/alacritty
set termguicolors
set t_Co=256

" no ShaDa error
if !has('nvim')
  set viminfo+=n~/vim/viminfo
else
  set viminfo+=n~/.vim/.shada
endif

" keymaps
nnoremap <silent> <leader>ao z=1<cr><cr>
nnoremap <silent> <C-c> :Commentary<cr>j
nnoremap <silent> <leader>at a<C-R>=strftime('%Y-%m-%d %a')<cr><esc>
vnoremap <silent> <leader>at c<C-R>=strftime('%Y-%m-%d %a')<cr><esc>
nnoremap <silent> <leader>aT a<C-R>=strftime('%Y-%m-%d %a %T(%Z)')<cr><esc>
vnoremap <silent> <leader>aT c<C-R>=strftime('%Y-%m-%d %a %T(%z)')<cr><esc>
noremap <silent> <leader>bd :bd!<cr>
" noremap <silent> <leader>bD :silent! w \| %bd \| e#<cr>
noremap <silent> <leader>bD :bufdo bd!<cr>
noremap <silent> <leader>wd :q<cr>
noremap <silent> <leader>wD :q!<cr>
noremap <silent> <leader>wv :vsplit<cr>
noremap <silent> <leader>wt :tabe<cr>
noremap <silent> <leader>wm :only<cr>
noremap <silent> <leader>fw :silent! call SaveBuffer()<cr>
noremap <silent> <leader>fW :silent! wa<cr>
noremap <silent> <leader>fu :set undoreload=0<cr>:e<cr>
noremap <silent> <leader>fe :e!<cr>
noremap <silent> <leader>fE :silent! bufdo e!<cr>
noremap <silent> <leader>fn :let @+ = expand('%')<cr>
noremap <silent> <leader>fP :let @+ = expand('%:p:h')<cr>
noremap <silent> <leader>fp :let @+ = expand('%:p')<cr>
noremap <silent> <leader>fo :exe "e" @+<cr>
noremap <silent> <leader>fc :execute 'e' expand('%:r').'_.'.expand('%:e')<cr>
noremap <silent> <leader>ft :Filetypes!<cr>
noremap <silent> <leader>qq :qa<cr>
noremap <silent> <leader>qQ :qa!<cr>
noremap <silent> <leader>qw :wqa<cr>
noremap <silent> <leader>qW :silent! :wa!<cr>:qa!<cr>
noremap <silent> <leader>vD :tabe ~/.config/nvim/init.vim<cr>
noremap <silent> <leader>vd :e ~/.config/nvim/init.vim<cr>
noremap <silent> <leader>vs :so $MYVIMRC<cr>
noremap <silent> <leader>vi :PlugInstall<cr>
noremap <silent> <leader>vc :PlugClean<cr>
noremap <silent> <leader>vp :so $MYVIMRC<cr>:PlugInstall<cr>
noremap <silent> <leader>vu :PlugUpdate<cr>
noremap <silent> <leader>fD :call DeleteFileAndBuffer()<cr>

function! DeleteFileAndBuffer()
  if confirm('Delete this buffer and file?', "&Yes\n&No", 0) == 1
    call delete(expand('%'))
    bdelete!
  endif
endfunction

noremap <silent> <leader>fd :call delete(expand('%'))<cr>:set modified<cr>
noremap <silent> <leader>fm :exe 'silent!' 'Move' input('New name: ', expand('%'))<cr>
noremap <silent> <M-h> :bprevious<cr>
noremap <silent> <M-l> :bnext<cr>
noremap <silent> <leader>gs :MagitOnly<cr>
noremap <silent> <leader>gb :Gblame<cr>
noremap <silent> <leader>gd :exe 'Gdiff' input('Commit hash: ')<cr>
noremap <silent> <A-j> :m .+1<CR>
noremap <silent> <A-k> :m .-2<CR>
inoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <A-j> :m '>+1<CR>gv=gv
vnoremap <silent> <A-k> :m '<-2<CR>gv=gvnnoremap <silent> <A-h> :bnext<cr>
nnoremap <silent> <A-l> :bprevious<cr>
nnoremap <silent> <leader>V ggvG$<cr>
noremap <silent> <leader>au :MundoToggle<cr>
noremap <silent> <leader>r :reg<cr>
noremap <silent> <leader>hh :exe 'tab h' input('Help with what? ')<cr>
noremap <silent> <leader>hH :exe 'tab h '.expand("<cword>")<cr>
noremap <silent> <leader>hb :map<space>
noremap <silent> <leader>as :Snippets<cr>
noremap <silent> <leader>hc :Commands<cr>
noremap <silent> <leader><tab> :silent b#<cr>
nnoremap <silent> Y y$
nnoremap <silent> yY :let @+ = getline('.')<cr>
nnoremap <silent> <leader>dD :let @+ = getline('.')<cr>"_dd
noremap <silent> gf gf:silent cd .<cr>
nnoremap <silent> <leader>ff :Autoformat<cr>
nnoremap <silent> [ :lprevious<cr>
nnoremap <silent> ] :lnext<cr>

for i in range(1, 9)
  " <leader>{n} for window switching
  execute "noremap <silent> <leader>".i." :".i."wincmd W<cr>"
  " g{n} and M-{n} for tab switch
  execute "noremap g".i." ".i."gt"
  execute "noremap <m-".i."> ".i."gt"
endfor

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap <cr> i<cr><esc>

" long lines
noremap k gk
noremap gk k
noremap <c-k> k
noremap j gj
noremap gj j
noremap <c-j> j
noremap 0 g0
noremap g0 0
noremap $ g$
noremap g$ $
noremap <c-$> $
noremap ^ g^
noremap g^ ^

" " completion tab behaviour
" inoremap <expr> <tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " completion selection keys
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <C-o> pumvisible() ? deoplete#mappings#close_popup() : "\<S-Tab>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" completion enter behaviour
inoremap <silent> <cr> <C-r>=<SID>my_cr_function()<cr>
function! s:my_cr_function() abort
  return deoplete#mappings#smart_close_popup()."\<cr>"
endfunction
" ultisnips
" let g:UltiSnipsExpandTrigger = "\<C-o>"
" let g:UltiSnipsListSnippets = <c-tab>
" let g:UltiSnipsJumpForwardTrigger = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'

" apps
let g:appdata_sync = $APPDATA_SYNC

" scratches
let g:scratches_dir = g:appdata_sync."/scratches/"
function! SaveBuffer()
  if expand('%') == ''
    let l:name = input('Label: ')
    let l:dir_path = g:scratches_dir.system('dmy')
    exe system('mkdir -p '.l:dir_path)
    let l:label = l:name != '' ? '_'.l:name : ''
    let l:filetype = getbufvar(bufnr("%"), '&filetype')
    if l:filetype == ''
      let l:filetype = 'txt'
    endif
    let l:file_name = system('hms').l:label.'.'.(l:filetype == '' ? 'txt' : l:filetype)
    let l:file_path = l:dir_path.'/'.l:file_name
    exe 'w' l:file_path
  else
    exe 'w'
  endif
endfunction

" translator
let g:trans_dir = g:appdata_sync."/trans/"
let g:trans_index = g:trans_dir."index.md"

function! Trans()
  exe system("mkdir -p ".g:trans_dir)
  let l:caption = expand("<cword>")
  if l:caption == ''
    let l:word_path = g:trans_index
  else
    let l:word = tolower(l:caption)
    let l:word_path = g:trans_dir.l:word.".txt"
    if !filereadable(expand(l:word_path))
      if system("command -v trans") == ''
        echo("No trans executeble found.")
      else
        exe system("trans -no-ansi en: ".l:word.">".l:word_path)
      endif
    endif
  endif
  exe "e" fnameescape(l:word_path)
endfunction

noremap <silent> <leader>ad :call Trans()<cr>
noremap <silent> <leader>aD :exe "e" fnameescape(g:trans_index)<cr>

" lyrics
let g:lyrics_dir = g:appdata_sync."/lyrics/"
let g:lyrics_index = "index.md"

function! Lyrics()
  exe system("mkdir -p ".g:lyrics_dir)
  let l:caption = getline('.')
  if l:caption == ''
    let l:song_path = g:lyrics_dir.g:lyrics_index
  else
    let l:song_name = substitute(tolower(l:caption), " ", "_", "g")
    let l:song_path = g:lyrics_dir.l:song_name.".txt"
    if !filereadable(expand(l:song_path))
      if system("command -v clyrics") == ''
        echo("No clyrics executeble found.")
      else
        exe system("clyrics ".l:song_name.">".l:song_path)
      endif
    endif
  endif
  exe "e" fnameescape(l:song_path)
endfunction

noremap <silent> <leader>al :call Lyrics()<cr>
noremap <silent> <leader>aL :exe "e" fnameescape(g:lyrics_dir.g:lyrics_index)<cr>

" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

vnoremap <silent> <leader>tO :Overline<cr>
vnoremap <silent> <leader>tU :Underline<cr>
vnoremap <silent> <leader>tD :DoubleUnderline<cr>
vnoremap <silent> <leader>tS :Strikethrough<cr>
noremap <silent> <leader>tl :set spelllang=
" snake to camel case
noremap <silent> <leader>tc :s#_\(\l\)#\u\1#g<cr>
" snake to pascal case
noremap <silent> <leader>tC :s#\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)#\u\1\2#g<cr>
" camel to snake case
noremap <silent> <leader>ts :s#\C\(\<\u[a-z0-9]\+\\|[a-z0-9]\+\)\(\u\)#\l\1_\l\2#g<cr>

" global settings
" no comment formatting
au BufEnter * silent! set formatoptions-=cro
" transparency
hi Normal guibg=NONE ctermbg=NONE

" modes
function! ToggleVar(var, message)
  if a:var
    if a:message != ''
      echo a:message.' mode OFF'
    endif
    return 0
  else
    if a:message != ''
      echo a:message.' mode ON'
    endif
    return 1
  endif
endfunction

" autosave buffers on focus loss mode
let autoSaveMode = 1
nnoremap <silent> <leader>ms :let autoSaveMode=ToggleVar(autoSaveMode, 'autosave buffers')<cr>
au FocusLost * silent! exe autoSaveMode?'wa':''
" highlight symbol under cursor mode
let highlightSymbolMode = 0
nnoremap <silent> <leader>mH :let highlightSymbolMode=ToggleVar(highlightSymbolMode, 'symbol highlight')<cr>
au CursorHold * exe highlightSymbolMode?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none'
" hlsearch mode
nnoremap <silent> <leader>mh :call ToggleVar(&hlsearch, 'hlsearch')<cr>:set hlsearch!<cr>
" spellchecker mode
set spellcapcheck=
set spelllang=en
nnoremap <silent> <leader>mc :call ToggleVar(&spell, 'spellchecker')<cr>:set spell!<cr>
" show interface mode
let g:showInterfaceMode = 1
function! ToggleInterface()
  let g:showInterfaceMode=ToggleVar(g:showInterfaceMode, '')
  if g:showInterfaceMode == 0
    set nonumber
    set norelativenumber
    let s:hidden_all = 1
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
  else
    set number
    set relativenumber
    let s:hidden_all = 0
    set showmode
    set ruler
    set laststatus=2
    set showcmd
  endif
endfunction

nnoremap <silent> <leader>mi :call ToggleInterface()<cr>
" toggle table mode
let g:table_mode_map_prefix = '<Leader>T'
nnoremap <silent> <leader>mt :TableModeToggle<cr>
" toggle read on focus mode
let readOnFocusMode = 1
nnoremap <silent> <leader>mr :let readOnFocusMode=ToggleVar(readOnFocusMode, 'read on focus')<cr>
au FocusGained * silent! exe readOnFocusMode?'checkt':''

" autochdir
let g:rooter_manual_only = 1
let g:rooter_silent_chdir = 1
autocmd BufEnter * silent! lcd %:p:h
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir = 1

" deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('around', 'rank', 20)
call deoplete#custom#source('buffer', 'rank', 32)
call deoplete#custom#source('ultisnips', 'rank', 40)
au FileType markdown,tex,vimwiki,text let b:deoplete_disable_auto_complete = 1

" airline
function! ProjectPath(filename)
  if a:filename == ''
    return '[New file]'
  endif
  let rootDirPath = FindRootDirectory()
  let s = substitute(a:filename, l:rootDirPath."/" , "", "")
  return s
endfunction
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline_section_a = airline#section#create([])
let g:airline_section_b = airline#section#create([])
let g:airline_section_c = "%{ProjectPath(expand('%:p'))}"
let g:airline_section_z = airline#section#create([])

" NERDTree
let g:NERDTreeNotificationThreshold = 500
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
noremap <silent> <leader>pt :call NERDTreeRootFind()<cr>
function! NERDTreeRootFind()
  let l:pwd = expand('%:p')
  exe 'NERDTree' FindRootDirectory()
  if l:pwd != ''
    exe 'NERDTreeFind' l:pwd
  endif
endfunction
let g:NERDTreeMapOpenRecursively = "go"
let g:NERDTreeMapPreview = "O"

" fzf
function! s:with_git_root()
  let root = systemlist('git rev-parse --show-toplevel')[0]
  return v:shell_error ? {} : {'dir': root}
endfunction
let g:fzf_history_dir = '~/.local/share/fzf-history'
command! -nargs=* AgContents
      \ call fzf#vim#grep(
      \ 'ag --hidden --ignore .git --nogroup --color --color-match "1;37" .+',
      \ 0,
      \ {
      \ 'dir': <q-args>,
      \ 'options': [
      \ '--color', $SEARCH_COLORS,
      \ '--delimiter', ':',
      \ '--nth', '3..'
      \ ]
      \ },
      \ 1
      \ )
command! -nargs=* AgFilenamesAndContents
      \ call fzf#vim#grep(
      \ 'ag --hidden --ignore .git --nogroup --color --color-match "1;37" .+',
      \ 0,
      \ {
      \ 'dir': <q-args>,
      \ 'options': [
      \ '--color', $SEARCH_COLORS,
      \ ]
      \ },
      \ 1
      \ )
command! -nargs=* AgFilenames
      \ call fzf#vim#grep(
      \ 'ag --hidden --ignore .git -g .',
      \ 1,
      \ {
      \ 'dir': <q-args>,
      \ 'sink': 'e',
      \ 'options': [
      \ '--color', $SEARCH_COLORS,
      \ ]
      \ },
      \ 1
      \ )
noremap <silent> <leader>ww :Windows!<cr>
noremap <silent> <leader>pf :exe 'AgFilenames' FindRootDirectory()<cr>
noremap <silent> <leader>fs :exe 'AgFilenames' '.'<cr>
noremap <silent> <leader>sf :exe 'AgContents' '.'<cr>
noremap <silent> <leader>sF :exe 'AgFilenamesAndContents' '.'<cr>
noremap <silent> <leader>sp :exe 'AgContents' FindRootDirectory()<cr>
noremap <silent> <leader>sP :exe 'AgFilenamesAndContents' FindRootDirectory()<cr>
noremap <silent> <leader>fa :FZF! -x ~<cr>
noremap <silent> <leader>ss :BLines!<cr>
noremap <silent> <leader>sl :BLines!<cr>
noremap <silent> <leader>s: :History:!<cr>
noremap <silent> <leader>sc :History:!<cr>
noremap <silent> <leader>s/ :History/!<cr>
nnoremap <silent> <leader>/ :exe '/'.expand("<cword>")<cr>
vnoremap / y/<C-R>"<CR>
noremap <silent> <leader>fr :History!<cr>
noremap <silent> <leader>fR :tabe<cr>:History!<cr>
noremap <silent> <leader>hm :Maps<cr>

" easyclip
let g:EasyClipUseSubstituteDefaults = 1
let g:EasyClipUseCutDefaults = 0
nnoremap d "_d
xnoremap d "_d
nnoremap dd "_dd
nnoremap D "_D
nmap <leader>d <plug>MoveMotionPlug
xmap <leader>d <plug>MoveMotionXPlug
nmap <leader>dd <plug>MoveMotionLinePlug
nmap <leader>D <plug>MoveMotionEndOfLinePlug
" somehow it did not work in scratch buffer
nmap <silent> s <plug>SubstituteOverMotionMap
nmap <silent> ss <plug>SubstituteLine
nmap <silent> S s$
vmap s S


" vimwiki
let g:vimwiki_global_ext = 0
let g:vimwiki_path = g:appdata_sync.'/vimwiki'
let g:vimwiki_path_html = g:vimwiki_path.'/html'
let g:vimwiki_template_path = g:vimwiki_path.'/templates'
let g:vimwiki_template_ext = '.html'
let g:vimwiki_syntax = 'markdown'
let g:vimwiki_ext = '.md'
let g:vjournal = {}
let g:vjournal.path = g:vimwiki_path
let g:vjournal.ext = g:vimwiki_ext
let g:vjournal.syntax = g:vimwiki_syntax
let g:vjournal.path_html = g:vimwiki_path_html
let g:vjournal.diary_rel_path = 'journal/'
let g:vjournal.diary_index = 'journal_index'
let g:vjournal.diary_header = 'Journal'
let g:vjournal.template_path = g:vimwiki_template_path
let g:vjournal.template_ext = g:vimwiki_template_ext
let g:vdiary = {}
let g:vdiary.path = g:vimwiki_path
let g:vdiary.ext = g:vimwiki_ext
let g:vdiary.syntax = g:vimwiki_syntax
let g:vdiary.path_html = g:vimwiki_path_html
let g:vdiary.diary_rel_path = 'diary/'
let g:vdiary.diary_index = 'diary_index'
let g:vdiary.diary_header = 'Diary'
let g:vdiary.template_path = g:vimwiki_template_path
let g:vdiary.template_ext = g:vimwiki_template_ext
let g:vimwiki_list = [g:vjournal, g:vdiary]
nmap <silent> <leader>aw <plug>VimwikiIndex
nmap <silent> <leader>ow <plug>VimwikiIndex
nmap <silent> <leader>oW <plug>VimwikiTabIndex
nmap <silent> <leader>os <plug>VimwikiUISelect
nmap <silent> <leader>oi <plug>VimwikiDiaryIndex
function! VimwikiMakeDiaryNoteFixed(count)
  if a:count == 2
    set spell
  endif
  echo a:count
  let g:vimwiki_current_idx=v:count1 - 1
  VimwikiMakeDiaryNote
endfunction
nmap <silent> <leader>od :<c-u>:call VimwikiMakeDiaryNoteFixed(v:count)<cr>
nmap <silent> <leader>oD :<C-U>let g:vimwiki_current_idx=v:count1 - 1<cr><plug>VimwikiTabMakeDiaryNote
nmap <silent> <leader>oy <plug>VimwikiMakeYesterdayDiaryNote
nmap <silent> <leader>og <plug>VimwikiDiaryGenerateLinks
nmap <silent> <leader>or <plug>VimwikiRenameLink
nmap <silent> <leader>oq <plug>VimwikiDeleteLink
nmap <silent> <leader>ot :VimwikiTOC<cr>

" markdown
let g:vim_markdown_folding_disabled = 1

" easy-align
" normal mode
nmap ga <Plug>(EasyAlign)
" align a paragraph
nmap <leader>aap <Plug>(EasyAlign)ap*
nmap <leader>aapa <Plug>(EasyAlign)ap*&
nmap <leader>aape  <Plug>(EasyAlign)ap*=
" align buffer
nmap <leader>aao :exe '%EasyAlign*' input(char: )<cr>
nmap <leader>aaoa :%EasyAlign*&<cr>
nmap <leader>aaoe :%EasyAlign*=<cr>
" visual mode
xmap ga <Plug>(EasyAlign)
xmap <leader>a :EasyAlign<cr>*
xmap <leader>aa :EasyAlign<cr>*&
xmap <leader>ae :EasyAlign<cr>*=

" calculator
nnoremap <silent> <leader>ac :,Crunch!<cr>
nnoremap <silent> <leader>ae :,Crunch<cr>
vnoremap <silent> <leader>ac :,Crunch!<cr>
vnoremap <silent> <leader>ae :Crunch<cr>
" indentLine
let g:indentLine_enabled = 0
" au FileType html,vue let g:indentLine_enabled = 1

" linters/formatters
let g:ale_fixers = {
      \ 'javascript':
      \ [
      \ 'eslint'
      \ ],
      \ 'python':
      \ [
      \ 'black'
      \ ]
      \ }
let g:ale_linters = {}
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_set_highlights = 0

" languages
" emoji
 call deoplete#custom#source('emoji', 'filetypes', ['gitcommit', 'markdown', 'text'])
" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:formatters_javascript = ['prettier']
let g:formatters_typescript = ['prettier', 'tsfmt']
let g:formatters_json = ['prettier']
" let g:formatdef_my_prettier = '"prettier --single-quote --stdin --stdin-filepath ".expand("%:p").(&textwidth ? " --print-width ".&textwidth : "")'
" typescript
" let g:nvim_typescript#type_info_on_hold=1
au FileType typescript noremap <buffer> K :TSDoc<cr>
au FileType typescript noremap <buffer> <M-cr> :TSImport<cr>
au FileType typescript noremap <buffer> <C-b> :TSDef<cr>
au FileType typescript noremap <buffer> <C-S-b> :TSTypeDef<cr>
" elm
au FileType elm nmap <buffer> K :ElmShowDocs<cr>
" vuejs
let g:vue_disable_pre_processors = 1
" haskell
let g:necoghc_enable_detailed_browse = 1
au FileType haskell nnoremap <buffer> <silent> ,t :w<cr>:GhcModType<cr>
au FileType haskell nnoremap <buffer> <silent> ,c :GhcModTypeClear<cr>
" elixir
let g:alchemist_tag_disable = 1
" rust
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
" latex
let g:tex_flavor = "latex"

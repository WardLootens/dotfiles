set ignorecase
set smartcase

set hlsearch

set textwidth=0 
set wrapmargin=0

set wrap

set autoindent
set smartindent

set splitbelow
set splitright

" tabstop	number of spaces a <Tab> in the text stands for
set tabstop=4

" shiftwidth	number of spaces used for each step of (auto)indent
set shiftwidth=4

" smarttab	a <Tab> in an indent inserts 'shiftwidth' spaces
set smarttab

" softtabstop	if non-zero, number of spaces to insert for a <Tab>
set softtabstop=4

" expandtab	expand <Tab> to spaces in Insert mode
set et

" smartindent	do clever autoindenting
set si

set laststatus=2 "display the status line always

" Show file encoding in status line
if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

set backspace=2 " make backspace work like most other apps

set number

syntax enable
"colorscheme desert
"set background=dark
set background=light
colorscheme solarized

set wildignore=*.swp,*.bak,*.pyc,*.class,*.r

set nobackup
"set noswapfile

" remap some keys
"inoremap jk <ESC>
nnoremap ; :
" nnoremap n i<CR><ESC>

noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp

"noremap <c-s-l> :echo strlen(getline('.'))<CR>
"noremap <c-s-l> <ESC> strlen(getline('.')) a - <ESC> a

" Underline the current line in normal mode
nnoremap <c-l> yyp<c-v>$r-
nnoremap <c-l><c-l> yyp<c-v>$r=
nnoremap <c-l><c-l><c-l> yyp<c-v>$r~

" Underline the current line in insert mode
inoremap <c-l> <Esc>yyp<c-v>$r-A
inoremap <c-l><c-l> <Esc>yyp<c-v>$r=A
inoremap <c-l><c-l><c-l> <Esc>yyp<c-v>$r~A

" Checkboxes
inoremap [[ [ ] 
nnoremap [[ 0i[ ] <Esc>
inoremap ]] <Esc>0f[lix<Del><Down>
nnoremap ]] 0f[lix<Del><Down><Esc>

" Some shortcuts for git rebase -i
nnoremap fu 0cwfixup<Esc>
nnoremap sq 0cwsquash<Esc>
nnoremap rw 0cwreword<Esc>

"nnoremap ci gg"kyt:
nnoremap cif gg"kyt:<CR>:!mkdir u:\glims\incidents\<c-r>k<CR>:w u:\glims\incidents\<c-r>k\<c-r>k_info.txt<CR>

"noremap <c-s-i> :!mkdir u:\glims\incidents\<c-r>a
"Surround with <u> tags
nmap <S-U> ysiw<u>

" TODO: review

function! s:underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Courier\ New\ 10
  elseif has("gui_photon")
    set guifont=Courier\ New:s10
  elseif has("gui_kde")
    set guifont=Courier\ New/10/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Courier_New:h10:cDEFAULT
"    set guifont=Consolas:h11:cDEFAULT
  endif
endif

if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Revert with ":filetype off".
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | au! | augroup END"
  augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  augroup END

endif " has("autocmd"


" git config core.autocrlf should be set to appropriate value

" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization " across (heterogeneous) systems easier.
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

"execute pathogen#infect()

if empty(glob('~/.vim/autoload/plug.vim'))
  execute 'silent !curl -fLo' shellescape(fnamemodify('~/.vim/autoload/plug.vim', ':p')) '--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" <vim-plug plugins>
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'niquola/vim-hl7'
Plug 'RRethy/vim-illuminate'
call plug#end()
" </vim-plug plugins>

set nocompatible

if has('win32') || has('win64')
	"source $VIMRUNTIME\vimrc_example.vim
	source $VIMRUNTIME\mswin.vim
	source $HOME\.vim\vimrc_ward.vim
	source $HOME\.vim\vimrc_testtools
	source $HOME\.vim\hl7.vim

	set backupdir=c:\Users\wardl\.vim\backup_files\\
	set directory=c:\Users\wardl\.vim\swap_files\\
	set undodir=c:\Users\wardl\.vim\undo_files\\

elseif has('mac')
	source $HOME/.vim/vimrc_ward.vim

	set backupdir=$HOME/.vim/backup_files/
	set directory=$HOME/.vim/swap_files/
	set undodir=$HOME/.vim/undo_files/

elseif has('unix')
	"source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	source $HOME/.vim/vimrc_ward.vim

	set backupdir=$HOME/.vim/backup_files/
	set directory=$HOME/.vim/swap_files/
	set undodir=$HOME/.vim/undo_files/

    "mode dependent cursor
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"

endif

" Not needed?
"set fileformats+=dos
"set binary



" Cursor properties
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor




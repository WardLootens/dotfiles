setx HOME %USERPROFILE%

cd %HOME%

mklink /H _vimrc .dotfiles\vim\.vimrc
mklink /J .vim .dotfiles\vim\.vim

mklink /H .minttyrc .dotfiles\mintty\.mintty
mklink /J .mintty .dotfiles\mintty\.mintty

mklink /H .gitconfig .dotfiles\git\.gitconfig
mklink /H .gitignore_global .dotfiles\git\.gitignore_global
mklink /H .gitmailmap .dotfiles\git\.gitmailmap

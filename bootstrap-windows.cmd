setx HOME %USERPROFILE%

cd %HOME%

mklink /H _vimrc .dotfiles\.vimrc
mklink /J .vim .dotfiles\.vim


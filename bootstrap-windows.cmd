REM @echo OFF

setx HOME %USERPROFILE%
set HOME=%USERPROFILE%

pushd %HOME%

:choice
set /P DELETE_EXISTING=Do you want to delete existing files[Y/N]?
if /I "%DELETE_EXISTING%" EQU "Y" goto :delete_existing_files
if /I "%DELETE_EXISTING%" EQU "N" goto :create_links
goto :choice

:create_links

mklink /H .vimrc .dotfiles\vim\.vimrc
mklink /J .vim .dotfiles\vim\.vim

mklink /H .minttyrc .dotfiles\mintty\.minttyrc
mklink /J .mintty .dotfiles\mintty\.mintty

mklink /H .gitconfig .dotfiles\git\.gitconfig
mklink /H .gitconfig.os .dotfiles\git-win\.gitconfig.os
mklink /H .gitignore_global .dotfiles\git\.gitignore_global
mklink /H .gitmailmap .dotfiles\git\.gitmailmap

popd

goto :eof

:delete_existing_files
REM Hard links do not seem to work properly, so for now add option to remove file
del _vimrc
del .vimrc
del .minttyrc
del .gitconfig
del .gitconfig.os
REM del .gitignore_global
REM del .gitmailmap

goto :create_links

:eof



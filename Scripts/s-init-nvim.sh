#!/bin/bash
# @Autor Abraham Ramírez Hernández
# @Fecha 13/08/2022
# @Descripcion Script para realizar las configuraciones de NVIM con mi entorno en un nuevo sistema

#TODO hacer que obtenga parametros y dependiendo de ello saber que herramientas configurará

mkdir -p ~/.config/nvim/
ln -s ~/Mi-entorno-Linux/.vim ~/.vim
cp ~/.vim/init.vim ~/config/nvim/

ln -s ~/Mi-entorno-Linux/.vim/vimwiki ~/vimwiki
mkdir ~/diary
touch ~/private.wiki
if [[ -e ~/vimwiki/diary ]]; then
  rm -rf ~/vimwiki/diary
  ln -s ~/diary ~/vimwiki/diary
else
  ln -s ~/diary ~/vimwiki/diary
fi
if [[ -e ~/vimwiki/private.wiki ]]; then
  rm ~/vimwiki/private.wiki
  ln -s ~/.private.wiki ~/vimwiki/private.wiki
else
  ln -s ~/.private.wiki ~/vimwiki/private.wiki
fi

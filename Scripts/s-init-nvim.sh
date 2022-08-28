#!/bin/bash
# @Autor Abraham Ramírez Hernández
# @Fecha 13/08/2022
# @Descripcion Script para realizar las configuraciones de NVIM con mi entorno
# en un nuevo sistema basado en Ubuntu

#TODO hacer que obtenga parametros y dependiendo de ello saber que herramientas configurará

opcion="${1}"
PM="${2}"

function ayuda() {
  error="${1}"
  cat s-ayuda.txt
  exit "${1}"
}

if [ -z opcion ]; then
  echo "Error: la opción de configuración no fue especificada."
  ayuda 100
fi

#Valida rango
if ! [[ "${opcion}" =~ [1-3]+ &&
	"${numImagenes}" -gt 0 &&
	"${numImagenes}" -lt 4 ]];  then
	echo "Error: La opción es inválida"
	ayuda 102
fi


function instalarEntorno() {
  paqManager="${1}"
  #TODO: incluir todos los paquetes necesarios para el funcionamiento de coc y asciidoctor
  instalarNvim "${paqManager}"
  configurarNvim
}

function instalarNvim() {
  paqManager="${1}"
  if [ "${paqManager}" -eq 1 ]; then
    sudo apt-get install nvim
  elif [ "${paqManager}" -q 2 ]; then
    dnf install -y nvim
  else
    echo "Error: manejador incorrecto"
    ayuda 102
  fi
  configurarNvim
}

function configurarNvim() {
  echo "===================="
  echo "Creando directorios"
  echo "===================="
  mkdir -p ~/.config/nvim/
  mkdir -p ~/diary
  touch ~/private.wiki

  cp ~/.vim/init.vim ~/.config/nvim/
  echo "Listo."

  echo "==============="
  echo "Creando enlaces"
  echo "==============="
  ln -s ~/Mi-entorno-Linux/.vim ~/.vim
  ln -s ~/Mi-entorno-Linux/.vim/vimwiki ~/vimwiki

  if ! [ -z ~/vimwiki/diary ]; then
    rm -rf ~/vimwiki/diary
    ln -s ~/diary ~/vimwiki/diary
  else
    ln -s ~/diary ~/vimwiki/diary
  fi
  if ! [ -z ~/vimwiki/private.wiki ]; then
    rm -f ~/vimwiki/private.wiki
    ln -s ~/.private.wiki ~/vimwiki/private.wiki
  else
    ln -s ~/.private.wiki ~/vimwiki/private.wiki
  fi
  echo "Listo."
}


if [ "${1}" -eq 1 ]; then
  instalarEntorno "${PM}"
elif [ "${2}" -eq 2 ]; then
  instalarNvim "${PM}"
  configurarNvim
else
  configurarNvim
fi



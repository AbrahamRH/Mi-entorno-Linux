# Configuración de NVIM (no VIM)

Esta es una configuración básica para utilizar NVIM, esta versión incluye el uso de plugins, mapeos y atajos de teclas,
esquemas de colores y configuraciones.

**Nota:** Aunque tambien se puede utilizar para VIM es recomendable utilizarla únicamente para NVIM ya que puede disminuir el
rendimiento y funcionalidad para VIM, además de tener conflictos con otros programas como TMUX si se utilizan en
conjunto.

## Instalación

Para hacer uso de esta configuración realiza lo siguiente:



    git clone https://github.com/AbrahamRH/Vim.git ~/

    mkdir ~/.config/nvim/

    mv ~/.vim/init.vim ~/.config/nvim/


Posteriormente inicia nvim y ejecuta el comando :PlugInstall para poder hacer uso de los plugins y de los esquemas de
colores incluidos.

## Screenshots 

Editando un archivo en C mostrando algunos plugins.

![Captura de pantalla: Código en C](https://user-images.githubusercontent.com/42523701/114443147-f56ca280-9b92-11eb-81bc-358f6a8316db.png)

Editando un archivo de Python.

![Captura de pantalla: Código en Python](https://user-images.githubusercontent.com/42523701/114443948-edf9c900-9b93-11eb-84ff-609f67033028.png)

Editando un archivo de C++

![Captura de pantalla de 2021-04-12 13-48-55](https://user-images.githubusercontent.com/42523701/114445630-e9361480-9b95-11eb-83cc-b524d876f540.png)

## Plugins

Si deseas ver que Plugins estan instalados actualmente revisa el archivo [plugins.vim](plugins.vim) y para poder
configurarlos (como por ejemplo la documentación de Doxygen) ve a [plugins-config.vim](plugins-config.vim).

Para realizar algunas configuraciones de CoC o Kite se recomienda realizarlas dentro del directorio `~/.config/nvim/`

## Mapeos

La tecla líder para realizar los mapeos es el espacio " ",  revisa el archivo [maps.vim](maps.vim) para conocer los
distintos atajos implementados.



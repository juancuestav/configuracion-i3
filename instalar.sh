#!/bin/bash
#Script configuracion del entorno i3wm
#Previo a la ejecucion de este script revise el archivo LEEME.txt
#Autor: Juan Cuesta
#Fecha de creación: 22/06/2018
#Última fecha de modificación: 27/06/2018

rm ~/.config/i3/config
cp -r i3/* ~/.config/i3/
cp -r i3status ~/.config/
cp ranger/rc.conf ~/.config/ranger/

if [ -d ~/.config/dunst/ ];
then
    echo "El directorio ~/.config/dunst/ existe por lo tanto no se crea!."
else
    echo "Se ha creado el directorio ~/.config/dunst/"
    mkdir ~/.config/dunst/
fi

cp dunst/dunstrc ~/.config/dunst/

if [ -d ~/.icons/ ];
then
    echo "El directorio ~/.icons/ existe por lo tanto no se crea!."
else
    echo "Se ha creado el directorio ~/.icons/"
    mkdir ~/.icons/
fi

cp fondos_pantalla/* ~/.icons/

if [ -d ~/.fonts/ ];
then
    echo "El directorio ~/.fonts/ existe por lo tanto no se crea!."
else
    echo "Se ha creado el directorio ~/.fonts/"
    mkdir ~/.fonts/
fi

cp -r fonts/* ~/.fonts/


if [ -d ~/.themes/ ];
then
    echo "El directorio ~/.themes/ existe por lo tanto no se crea!."
else
    echo "Se ha creado el directorio ~/.themes/"
    mkdir ~/.themes/
fi

#DESCOMPRIMIR MANUALMENTE
cp Tema/adapta-gtk-theme-colorpack_3.91.2.144-2-ga142f1db.tar.xz ~/.themes/
#tar -xvf ~/.themes/adapta-gtk-theme-colorpack_3.91.2.144-2-ga142f1db.tar.xz ~/.themes/

cp Iconos/papirus-icon-theme-20180501.tar.xz ~/.icons/
#tar -xvf ~/.icons/papirus-icon-theme-20180501.tar.xz ~/.icons/


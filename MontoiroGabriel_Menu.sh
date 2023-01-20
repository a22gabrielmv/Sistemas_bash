#!/bin/bash
clear
opcion=6
function pot() {
	n1=$1
	n2=$2
	res=$((n1**n2))
	echo $res
}
function resta_en_cinco() {
	cont1=$1
	cont2=0
	while [ $cont1 -gt 0 ]
	do
		((cont1-=5))
		((cont2+=1))
	done
	echo $cont2
}
while [ $opcion -ne 0 ]
do
    echo Menú
    echo --------
    echo 1- Mostrar archivos actuales y sus permisos
    echo 2- Muetra la ubicacion actual
    echo 3- Muetra un numero elevado por otro
    echo 4- Imprime una cara
    echo 5- Función que dice las veces que hay que restar un numero de 5 en 5 para llegar a 0
    echo 0- Salir
    echo Dime una opcion
    read opcion
    if [ $opcion == 1 ]
    then
        echo --------
        ls -l
        echo --------
    fi
    if [ $opcion == 2 ]
    then
        echo --------
        pwd
        echo --------
    fi
    if [ $opcion == 3 ]
    then
        numero1=0
        numero2=0
        echo --------
        echo Dime un número1
        read numero1
        echo Dime un número2
        read numero2
        echo Solucion:
        pot $numero1 $numero2
        echo --------
    fi
    if [ $opcion == 4 ]
    then
        echo --------
        echo ⠀⠀⠀⠀⠀⠀⠀⠀   ⣀⣴⣶⣿⣿⣿⣿⣿⣿⣿⣶⣦⣀⠀⠀⠀⠀⠀
        echo    ⠀⠀⠀⠀⠀⠀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀
        echo    ⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀
        echo    ⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣛⣻⣿⣿⣟⣿⣿⣿⣷⠀⠀⠀
        echo    ⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣫⣽⣾⣻⣾⣿⣿⣿⣿⡿⣿⣿⠀⠀⠀
        echo    ⠀⠀⠀⢰⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠻⡿⠿⠟⠛⣟⣿⣽⠀⠀⠀
        echo    ⠀⠀⠀⠸⣿⣿⣿⣷⣿⣿⣿⣿⡿⠍⠈⠀⠁⣴⡆⠀⠀⠠⢭⣮⣿⡶⠀⠀
        echo    ⠀⡴⠲⣦⢽⣿⣿⣿⣿⣿⣟⣩⣨⣀⡄⣐⣾⣿⣿⣇⠠⣷⣶⣿⣿⡠⠁⠀
        echo    ⠀⠃⢀⡄⠀⢻⣿⣿⣿⣿⣽⢿⣿⣯⣾⣿⣿⣿⣿⣿⢿⣿⣿⡟⣿⠀⠀⠀
        echo    ⠀⠀⠣⠧⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢸⣿⠿⠿⠿⣧⠙⣿⣿⡿⠀⠀⠀
        echo    ⠀⠀⠀⠁⠼⣒⡿⣿⣿⣿⣿⣿⣿⣿⣠⣬⠀⠀⠀⠀⣾⣷⡈⣿⡇⠀⠀⠀
        echo    ⠀⠀⠀⠀⠀⠉⢳⣿⣿⣿⣿⣿⣿⣿⢟⠗⠼⠖⠒⠔⠉⠉⠻⣿⠇⠀⠀⠀
        echo    ⠀⠀⠀⠀⠀⠀⠈⣻⡿⣿⣿⣿⣿⡿⡀⣤⡄⠸⣰⣾⡒⣷⣴⣿⠀⠀⠀⠀
        echo    ⠀⠀⠀⠀⠀⠀⠂⢸⡗⡄⠘⠭⣭⣷⣿⣮⣠⣌⣫⣿⣷⣿⣿⠃⠀⠈⠀⠀
        echo    ⠀⠀⠀⠀⠀⠈⠀⢸⣿⣾⣷⣦⡿⣿⣿⣿⡿⢻⠞⣹⣿⣿⠏⠀⠀⠀⠀⠀
        echo    ⠀⠀⠀⠀⠀⢘⠀⠘⢻⡿⢿⣋⣤⣤⠌⠉⠛⠛⠀⠈⠉⠁⠀⠀⠀⠀⠀⡀
        echo --------
    fi
    if [ $opcion == 5 ]
    then
        echo --------
        numero=0
        echo Dime un número
        read numero
        echo Solucion:
        resta_en_cinco $numero
        echo --------
    fi
done

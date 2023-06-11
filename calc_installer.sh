#!/bin/bash

if [ $(echo "$UID") == 0 ]; then 
clear
verde='\033[32m'
blanco='\033[37m'
rojo='\033[31m'
azul='\033[34m'
negro='\033[0;30m'
rosa='\033[38;5;207m'
amarillo='\033[33m'
morado='\033[35m'
cian='\033[1;36m'
magenta='\033[1;35m'
uncolor='\e[0m'
echo "Installing requirements..."
sudo apt install mawk > /dev/null 2>&1
awk -W help > /dev/null 2>&1

if [ ! $? -eq 0 ]; then
    clear
    echo -e "$verde"'['"$uncolor""$rojo"'!'"$uncolor""$verde"']'"$uncolor""$rojo"' FATAL ERROR DURING REQUIREMENTS INSTALLATION'
else
    echo '
    while true; do
verde='"'"'\033[32m'"'"'
blanco='"'"'\033[37m'"'"'
rojo='"'"'\033[31m'"'"'
azul='"'"'\033[34m'"'"'
negro='"'"'\033[0;30m'"'"'
rosa='"'"'\033[38;5;207m'"'"'
amarillo='"'"'\033[33m'"'"'
morado='"'"'\033[35m'"'"'
cian='"'"'\033[1;36m'"'"'
magenta='"'"'\033[1;35m'"'"'
uncolor='"'"'\e[0m'"'"'
	function banner() {
    echo '"'"'

< CALCULATOR >
 ------------
        \   ^__^
         \  ($$)\_______
            (__)\       )\/\
                ||----w |
                ||     ||


'"'"'
}
        clear
        banner
        echo '"'"'
        operadores:
                para elevar usa el signo "^"
                para dividir usa el signo "/"
                para multiplicar usa el signo "*"
                para hacer una raiz usa el signo "^(1/el numero de la raiz)" remplaza el numero de la raiz con las veces que deseas que el numero se deba repetir
                para restar usa el signo "-"
                para sumar usa el signo "+"

        orden de operaciones:
                1:parentesis
                2:potencias y raizes
                3:multiplicaciones y divisiones
                4:sumas y restas
        '"'"'
        read -e -p ''"Introduce la operación, por ejemplo (2+2)*3.5^2 que da como resultado 49. Los espacios serán ignorados: "' 'operation
        operation=$(echo "$operation" | tr -d '"' '"' '')
        i=$(awk '"'"'BEGIN{print '"'"'$operation'"'"'}'"'"')
	awk '"'"'BEGIN{print '"'"'$operation'"'"'}'"'"' > /dev/null 2>&1
	if [ $? -eq 0 ]; then
	echo el resultado es $i
	sleep 3.6
	else 
	echo -e "$verde"'"'"'['"'"'"$rojo"'"'"'!'"'"'"$verde"'"'"']'"'"'"$rojo"'"'"'SINTAX ERROR'"'"'"$uncolor"''
	sleep 1.8
	fi
done' > /usr/bin/calc
    chmod +x /usr/bin/calc
    echo "run calc to start calculator"
fi
else
echo -e "$rojopara este script necesitas root broooooooooooooooo"
fi

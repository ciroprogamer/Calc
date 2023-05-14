#!/bin/bash
clear
A=0
B=0
read -p "Ingresa el numero A: " A
read -p "Imgresa el numero B: " B
seq $A $B > /dev/null 2>&1
if [ $? -ne 0 ]; then
echo "no trolles e ingresa un numero"
else
clear
echo "Perfecto entonces A = $A y B = $B,vamos empezando..."
sleep 6s
clear

echo "El resultado de la suma es: $((A + B))"
echo "El resultado de la resta es: $((A - B))"
echo "El resultado de la multiplicacion es: $((A * B))"
echo "El resultado de la division es: $((A / B))"
echo "El resto que queda al dividirlos es: $((A % B))"
echo "///////////////////////////////////////////////////////////////////////"
if [ $A -eq $B ]; then
igual="si"
else
igual="no"
fi
echo "es A=B?: $igual"
if [ $A -gt $B ]; then
mayor="$A es mayor a $B"
elif [ $B -gt $A ]; then
mayor="$B es mayor a $A"
else
mayor="son iguales"
fi
echo "quien es mayor?: $mayor"
fi

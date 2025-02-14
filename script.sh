#!/bin/bash

# Tipos de variables: Universal -> Número, Bool o una Cadena.
n1=10
n2=7
echo "El valor de n1 es $n1"

# Estructuras de control condiconales
# Operadores condicionales
# < (-lt) > (-gt)  <= (-le) => (-ge)
# == (-eq) != (-ne)
if [[ $n1 -gt $n2 ]]; then
    echo "La sentencia es verdadera $n1 $n2"
else
    echo "La sentencia es falsa $n1 $n2"
fi

# Todo programa regrea un valor, si es exitoso es 0
ls
res=$?
echo "El resultado de la ejecusión es $res"
ls
if [[ $? -eq 0 ]]; then
    echo "La sentencia se ejecuto correctamente"
else
    echo "La sentencia fallo"
fi

# Operadores manipular archivos
# -e Si un archivo o carpeta existe.
# -d si es una carpeta
# -r -w -x (Si puede leer, escribir o ejecutar)
# -s Si el archivo esta vacío.

file="./file-demo"

if [ -s $file ]; then
    echo "El archivo contiene algo."
else
    echo "El archivo está vacío."
fi

# operadores lógicos AND (&&) OR (||)

if [ -r $file ] && [ -x $file ]; then
    echo "El archivo se puede leer y ejecutar"
else
    echo "El archivo no se puede leer ni ejecutar "
fi

# Estructura de control case 

# $ = array donde $# ($1, $2, $3 .. $n) -h hola
case $1 in
    hola )
        echo "Bienvenido"
    ;;
    adios )
        echo "Adios"
    ;;
    *)
        echo "No entiendo lo que dices"
    ;;
esac

# Estructuras iterativas

# while
user=""
while [[ $user != "admin" ]]; do
    read -p "¿Cuál es tu usuario?" user
done

# For
for i in {1..5}; do
    echo "el número es $i"
done

for ((i=0; i<5; i++)); do
    echo "* el número es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
    echo "Hola $invitado"
done

# Funciones
suma(){
    echo "Hola desde la función sumar."
}

resta(){
    echo $(( $1 - $2 ))
}

suma
total=$(resta 9 4)
echo "El total es $total"
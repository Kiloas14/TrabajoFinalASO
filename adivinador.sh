echo "Hola, esto es un adivinador de numeros"
echo "La maquina generara un numero aleatorio del 1 al 50 y vos tenes que adivinarlo"

aleatorio=$(( $RANDOM % 50 + 1 ))
contador=0
intento=10

while [ $contador -le $intento ];
do
        echo "¿Que numero elegis?"
        read numero
        if [ $aleatorio = $numero ];
        then
                break

        elif [ $numero -lt $aleatorio ];
        then 
                echo "El numero que tenes que adivinar es mayor al que elegiste"
                contador=$(( $contador + 1 ))

        elif [ $numero -gt $aleatorio ];
        then
                echo "El numero que tenes que adivinar es menor que al que elegiste"
                contador=$(( $contador + 1 ))
        else
                break

        fi
done
if [ $contador -le 5 ];
then
        echo "Ganaste en tiempo record"
elif [ $contador -ge 6 ] && [ $contador -le 10 ];
then
        echo "Ganaste pero te costo un poquito"
else
        echo "No pudiste adivinarlo, l2p"
fi

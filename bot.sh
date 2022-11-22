echo "Bienvenido $user"
opcion=0

while [ $opcion -ne "3" ]
do

    echo "¿Que queres hacer?"
    echo "------------"
    echo "1. Ver hora en formato de 12 Horas (AM/PM)"
    echo "2. Ver el clima de hoy en Bahia Blanca"
    echo "3. Salir"
    echo "------------"
    echo "Opcion elegida:"
    read opcion
    case $opcion in
        1)
            echo "------------"
            echo "La hora es:"
            date +"%I:%M %p"
            echo "------------"
            ;;
        2)
            echo "------------"
            curl wttr.in/Bahia_Blanca?0
            echo "------------"
            ;;
    esac
done
echo "Espero que te haya servido, cuidado si hay tormenta! Hasta pronto $user."

#!/bin/bash

echo "¡Bienvenido a mi videojuego de simulación interactiva!"
echo "Pulsa Enter para comenzar tu aventura."
read
echo "Antes de continuar, ten en cuenta que el juego aún lo estoy desarrollando."
echo "Si detectas algún fallo, notifícamelo lo antes posible."
echo "Pero si solo tienes problemas con la historia, te lo guardas para ti."
echo "Acepto sugerencias."
echo "Pulsa Enter para comenzar tu aventura."
read
echo "Te acabas de unir a una empresa puntera en tecnología como administrador de sistemas."
echo "Conocida como Corporación Especializada en Administración de Cómputo"
echo "O CEAC para los amigos."
echo "Pulsa Enter para comenzar tu aventura."
read
echo "Tu principal objetivo: demostrar que eres capaz de manejar cualquier reto sin cometer errores."
echo ""
echo "La recompensa? Mantener tu trabajo y ganarte la confianza de tu jefa."
echo "El riesgo? Un solo fallo y... estás despedido."
echo ""
echo "¿Crees que tienes lo que se necesita para sobrevivir en este sector?"
echo "Pulsa Enter para enfrentarte a tu primer desafío."
read
echo "Acabas de entrar a trabajar y te han asignado en el departamento de sistemas de CEAC."
echo "La primera persona que conoces es tu jefa Sofía."
echo "Dato de vital importancia: Sofía es la más atractiva de la empresa."
echo "Pulsa Enter para comenzar tu aventura."
read
echo "Sofía te da un saludo, pero..."
echo ""
echo "Sofía: Antes de seguir, necesito saber cuánto espacio tiene el disco duro del servidor principal."
echo ""

check_answer() {
    if [[ "$1" == "$2" ]]; then
        echo "Correcto"
    else
        echo "Pero, ¿cómo es posible que no sepas hacer eso? ¡DESPEDIDO!"
        exit 1
    fi
}

while true; do
    echo "Sofía: Escribe en la terminal el comando que usarías para verlo."
    read respuesta
    if [[ "$respuesta" == "exit" ]]; then
        echo "Gracias por jugar."
        exit 0
    fi
    check_answer "$respuesta" "df -h"

    echo "Sofía: Vale, ahora quiero que encuentres el archivo 33.txt en el directorio home."
    read respuesta
    check_answer "$respuesta" "find ~ -name 33.txt"

    echo "Sofía: Bien, ahora crea un usuario llamado Elver_Galarga."
    read respuesta
    check_answer "$respuesta" "sudo useradd Elver_Galarga"

    echo "Sofía: Muy bien, sigue así, mañana más."
    echo ""
    echo "Felicidades, has terminado el primer día."
    echo "Pulsa Enter para continuar."
    read

    echo "Comienza tu segundo día de trabajo."
    echo "Hoy conoces a quien será tu compañero de cubículo, Jesús."
    echo "Pulsa Enter para continuar."
    read
    echo ""
    echo "Jesús: Hey, ¿qué tal compi? Encantado de conocerte."
    echo "Te da la mano gustosamente."
    echo "Jesús: Perdona compi, una cosa, el servidor parece lento. Por favor, comprueba el uso de RAM actual."
    echo "Jesús: ¿Qué comando usarías?"
    read respuesta
    check_answer "$respuesta" "free -h"

    echo "Jesús: ¡Ostia, qué crack! Nada mal, novato, espero que te quedes aquí mucho tiempo."
    echo "Parece que le has caído muy bien a tu nuevo compañero."
    echo "Pulsa Enter para continuar."
    read
    echo "Sofía: ¿Qué hacéis perdiendo el tiempo?!"
    echo "Jesús: Perdona jefa, ahora nos ponemos."
    echo "Sofía: Tranquilo, Jesús, solo quería mandaros el siguiente trabajo."
    echo "Sofía: La empresa va a ampliar la sección de ventas, añadiendo 10 nuevos ordenadores."
    echo "Pulsa Enter para continuar."
    read
    echo "Sofía: Antes de agregar nuevos dispositivos, necesitas verificar el estado actual de la red. ¿Qué comando usarías para listar las interfaces de red disponibles en el servidor principal?"
    read respuesta
    check_answer "$respuesta" "ip a"

    echo "Sofía: Vale, la IP es 192.168.1.0/24."
    echo "Sofía: Ahora necesitamos asegurarnos de que la red tiene suficiente capacidad para manejar estos dispositivos."
    echo "Sofía: ¿Qué comando utilizarías para comprobar el rango de direcciones IP disponibles en la subred actual?"
    read respuesta
    check_answer "$respuesta" "ipcalc 192.168.1.0/24"

    echo "Sofía: Vale, perfecto, Jesús, tú ocúpate del resto, el nuevo tiene otro trabajo más."
    echo "Jesús: Sin problema. Nos vemos luego en la cafetería."
    echo "En ese momento, la jefa te lleva a un despacho donde ves que pone esto en la puerta:"
    echo "CEO José Luis López de Pablo"
    echo "Pulsa Enter para continuar."
    read
    echo "Sofía: Bueno, como puedes ver, este es el despacho del Sheriff."
    echo "Sofía: Resulta que quiere que le crees un archivo de texto que se llame Bloc.txt para escribir cosas varias."
    echo "Sofía: Es que como quiso ahorrarse el pagar gráficas, pues solo trabajamos en terminal, y algunas cosas no se aclara."
    echo "Escribe ahora qué comando usarías en la terminal para crear el archivo Bloc.txt."
    read respuesta
    check_answer "$respuesta" "touch Bloc.txt"

    echo "Sofía: Vaya, pues sí que era sencillo. Venga, vamos al comedor, así conoces al resto del equipo."
    echo "Has terminado correctamente estas pruebas, ahora conocerás al resto del equipo."
    echo "Pulsa Enter para continuar."
    read
    echo "Sofía: Es hora de que conozcas al resto del equipo de sistemas. Trabajarás mucho con ellos, así que presta atención."
    echo ""
    echo "Sofía: Primero, te presento a Carlos."
    echo "Carlos es el veterano del equipo, es el que más sabe de todos con diferencia y el que menos pelos de tonto tiene en la empresa."
    echo "Carlos: Yo también te aprecio mucho, Sofi. Tranquilo, chico, si tienes dudas de cualquier cosa, ven a preguntarme. Pero no me molestes cuando esté con mi café."
    echo ""
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: Luego, el que está ahí sentado jugando al Brawl Stars es Santiago."
    echo "Santiago es el especialista en lenguajes de marcas y configuración de entornos web. Se encarga de que todas las páginas que usamos en la empresa funcionen como deben."
    echo "Santiago: ¡Che! A mí, llámame solo por temas de la web o si querés jugar un Brawl."
    echo ""
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: Y el que está jugando con Santiago es Christian."
    echo "Christian es el experto en ciberseguridad, siempre está vigilando todo lo que entra y sale de la red para que no haya problemas, eso sí, no le digas tu correo personal, por experiencia."
    echo "Christian: No le digas eso, jefa, que va a pensar que le voy a robar el número de su tarjeta. En fin, encantado, tío."
    echo ""
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: Y ese que acaba de salir del baño rascandose descaradamente el escroto es Hugo."
    echo "Hugo es quien se ocupa de gestionar la base de datos, la verdad que no hay nadie mejor para poner el WHERE en el DELETE FROM."
    echo "Hugo: Qué cosas más bonitas me dices, jefa, eres la mejor, espero no tener otra jefa nunca."
    echo "Sofía: Este nunca cambia."
    echo ""
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Y bueno, y a Jesús ya lo conoces."
    echo "Jesús es el apoyo del equipo, no tiene una especialización como tal, él hace lo que hace falta."
    echo "Jesús: La verdad que sí, me toca hacer de todo aquí."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Has terminado de conocer a los integrantes del equipo y te diriges al comedor con Jesús y Santiago."
    echo "Pulsa cualquier tecla para comenzar el tercer día..."
    read -n1

    echo "Comienza el tercer día en CEAC. Sofía está más exigente que nunca, pero ahora tienes claro que cuentas con un equipo peculiar."
    echo "Nada más llegar, empiezas a organizar tus tareas cuando Sofía menciona que hay alguien del Departamento de Redes que quiere hablar contigo."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Te presentan a Marcos, del Departamento de Redes."
    echo "Marcos: Hola, soy Marcos, trabajo en Redes. Necesito tu ayuda con un problema en uno de los servidores. ¿Podrías indicarme el comando para verificar la configuración de red?"
    echo "¿Qué comando usarías para verificar la configuración de red de un servidor?"
    read respuesta
    check_answer "$respuesta" "ifconfig"

    echo "Marcos: ¡Perfecto! Gracias, siempre me lío con estos comandos."
    echo "Marcos: Es que yo siempre trabajo en Python y claro, con este lenguaje no me entero."
    echo "Marcos: ¿A ti te gusta Python? ¿A que es el mejor lenguaje de todos? ¡Viva Python, coño!"
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Después de resolver el problema de Marcos, Sofía te asigna otra tarea. Esta vez, necesitas asistir a Pau, quien trabaja como analista de datos."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Pau: Hola, soy Pau, encantado, tío. Necesito revisar los permisos de un script, y el Chat GPT no me lo quiere decir, me dice algo de derechos laborales de IA o algo asi."
	echo "Porque tubieron que entrenarla tanto hasta hacer que tuviera derechos no lo entiendo. En fin intenta tú añadir permisos de ejecución al archivo 'script.sh'."
    echo "¿Qué comando usarías para dar permisos de ejecución al archivo?"
    read respuesta
    check_answer "$respuesta" "chmod +x script.sh"

    echo "Pau: ¡Perfecto! Ahora podré seguir mirando las gráficas del IBEX 35, que creo que mi inversión en CEAC-coins está en alza."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Terminas el día con éxito después de conocer a más compañeros de otros departamentos."
    echo "Pulsa cualquier tecla para iniciar el cuarto día..."
    read -n1

    echo "Comienza el cuarto día. Hoy te toca colaborar con alguien de otro edificio: Dalfredo, quien trabaja en el Departamento de Desarrollo Web."
    echo "Dalfredo: Hola, soy Dalfredo, un placer. Estoy teniendo problemas para probar un nuevo script en nuestro servidor web. Necesito listar los archivos en el directorio actual, pero no recuerdo el comando."
    echo "¿Qué comando usarías para listar los archivos en el directorio actual?"
    read respuesta
    check_answer "$respuesta" "ls"

    echo "Dalfredo: ¡Genial! Muchas gracias. Por cierto, ¿tienes cartas Pokémon? Si las tienes y quieres venderlas, dame un toque."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "De vuelta en tu oficina, te encuentras con Christian, quien está investigando herramientas de monitorización."
    echo "Christian: Necesito un comando para monitorear en tiempo real el uso de CPU y memoria en Kali. ¿Tienes alguna sugerencia?"
    echo "¿Qué comando usarías para monitorear en tiempo real el uso de CPU y memoria?"
    read respuesta
    check_answer "$respuesta" "top"

    echo "Christian: Perfecto, justo lo que necesitaba. ¡Gracias!"
	echo "Christian: A y no le digas esto al jefe que me tiene enfilado desde que cole un virus en la empresa."
	echo "Christian: Es que como iba a saber yo que si descargaba el Minecraft pirata podia tener virus?"
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "El cuarto día termina con nuevas conexiones y tareas bien realizadas."
    echo "Pulsa cualquier tecla para iniciar el quinto día..."
    read -n1

    echo "Empezando tu quinto día, te mandan al departamento de infraestructura de red."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: No te sorprendas cuando llegues ahí si escuchas algunos gritos."
    echo "Te quedas bastante extrañado por lo que te han dicho, pero lo ignoras y vas igualmente."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Adrián Martínez: ¡PERO SE PUEDE SABER QUÉ ESTÁS HACIENDO! ¡ERES GILIPOLLAS!"
    echo "Mario: Tranquilo, que no es para tanto."
    echo "Adrián Martínez: No sabes lo que dices, ¿por qué nos tenían que coger a los dos en la misma empresa?"
    echo "Te sorprendes bastante de lo que estás escuchando al momento de entrar."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Adrián Martínez: Ah, hola, no te había visto, ¿eres el nuevo, no? Me presento, soy Adrián y este tonto de aquí es Mario."
    echo "Mario: Soy Mario, un placer, y lo de tonto sobra, gilipollas."
    echo "Adrián Martínez: Vete a hacer unos burpees y dejanos ostia."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Adrián Martínez: Bueno, no vamos a seguir con nuestras conversaciones. Le he pedido a Sofía que vengas por esto:"
    echo "Mario: Como puedes ver, nos han pasado esta base de datos."
    echo "Adrián Martínez: Podrías escribir una consulta para renombrar las columnas first_name y last_name como Nombre y Apellido, respectivamente."
    echo "Todas las consultas están escritas en minúscula, pero cuidado con los datos."
    read respuesta
    check_answer "$respuesta" "select first_name as Nombre, last_name as Apellido from actores"

    echo "Adrián Martínez: Perfecto, la consulta parece haber salido bien."
    echo "Vale, muchas gracias, tío, ya puedes irte."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Después de una dura jornada laboral, te vas a casa a descansar."
    echo "Empieza tu sexto día."
    echo "Ya llevas una semana, por lo que vas con más confianza que antes."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: Espero estés de buen humor porque hoy te toca irte al Departamento de Hardware."
    echo "Sofía: Resulta que tienen problemas con algo de la CPU o algo así, han dicho, y como dijiste en la entrevista que sabes mucho de eso, pues te toca."
    echo "En ese momento, recordaste que la mitad de tu CV era mentira."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Mohamed: ¿Eres el nuevo? Encantado, soy Mohamed. Te cuento que resulta que se nos han roto las calculadoras."
    echo "Por lo que necesito que me ayudes con el siguiente cálculo: ¿Cuál será la velocidad de rotación de un disco que da 21.600 vueltas en tres minutos?"
    read respuesta
    check_answer "$respuesta" "7200"

    echo "Mohamed: Perfecto, gracias por tu ayuda."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Mohamed: No suelo pedir ayuda con esto, ya que tengo un compañero que se llama Carlos, pero viene cuando le sale de ahí abajo, la verdad."
    echo "Mohamed: Pero como no está, pues me toca a mí."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1

    echo "Aymane: Espera, antes de irte, ¿podrías ayudarme con una cosa?"
    echo "Aymane: Por cierto, soy Aymane, trabajo en el departamento de hardware."
    echo "Aymane: Es que estamos utilizando scripts para poder programar ciertas cosas por si las CPU colapsaran o algo así."
    echo "Aymane: Por lo que te quería pedir que me crearas un script, un bucle for para iterar números."
    echo "Escribe solo el script, nada de !#/bin/bash."
    read respuesta
    check_answer "$respuesta" "for i in {1..10}; do echo \$i; done"

    echo "Aymane: Perfecto, gracias por tu ayuda."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Ahora que has terminado lo que tenías que hacer, vuelves a tu departamento cuando de repente..."
    echo "¡¡ESTO NO PUEDE SER!!"
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "¡¡PERO QUÉ COÑO ESTÁ PASANDO AQUÍ!!"
    echo "¡¡ESTO ES UNA LOCURA!!"
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Entras para ver qué pasa y resulta que ves a alguien desconocido gritando a todo el departamento de sistemas."
    echo "Oye tú, sí tú, ven aquí."
    echo "¿Este quién es? ¿Qué hace aquí?"
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: Él es el nuevo, lleva una semana con nosotros."
    echo "Sofía: Este es el CEO, fuimos a su despacho el primer día, pero no estaba."
    echo "Sofía: El señor José Luis López de Pablo."
    echo "José Luis: Vaya, vaya, así que tú eres el nuevo."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "José Luis: Me han hablado muy bien de ti, parece que has hecho un buen trabajo."
    echo "José Luis: Bueno, pues continuo."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "José Luis: ¡PERO CÓMO PUEDEN SER TAN RETRASADOS!"
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Aquí Sofía te pone en contexto."
    echo "Sofía: Resulta que desde que empezó la guerra entre Estados Unidos y China, gran parte de nuestras divisiones de otros países se han visto afectadas por las consecuencias de la guerra."
    echo "Sofía: Y a causa de los daños colaterales de esta guerra, resulta que varios de nuestros servidores y antenas se han visto afectados."
    echo "José Luis: Y ahora no hay más remedio que ir a arreglarlo, por lo que todos vosotros os vais de viaje."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Sofía: ¿Cómo que de viaje? ¿A dónde?"
    echo "José Luis: Pues aquí tengo la lista. Os vais juntitos, por lo que os voy a ir pillando ya los billetes."
    echo "José Luis: Eso sí, en turista, que no nos sobra la pela."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Y con esto termina el primer arco y da comienzo al próximo arco titulado 'La ruta del bacalao'."
    echo "Pulsa cualquier tecla para continuar..."
    read -n1
    echo "Continuará..."

    exit 0
done
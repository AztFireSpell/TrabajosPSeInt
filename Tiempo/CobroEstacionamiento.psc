Algoritmo CobradorEstacionamiento
	
	Definir hEntrada, mEntrada, hSalida, mSalida Como Entero
    Definir totalEntrada, totalSalida, minutosEstacionado Como Entero
    Definir fracciones, totalPagar, tarifa Como Entero
	
	tarifa <- 15
	
	Escribir "BIENVENIDO AL ESTACIONAMIENTO"
    Escribir "Hora de Entrada (0-23):"
    Leer hEntrada
    Escribir "Minuto de Entrada (0-59):"
    Leer mEntrada
	
	Escribir "Hora de Salida (0-23):"
    Leer hSalida
    Escribir "Minuto de Salida (0-59):"
    Leer mSalida
	
	//Convertimos todo a minutos
	totalEntrada <- (hEntrada * 60) + mEntrada
    totalSalida <- (hSalida * 60) + mSalida
	
	//Calculamos la diferencia
    minutosEstacionado <- totalSalida - totalEntrada
	
	// Si paso de la medianoche, ajustamos el cálculo
	
	//1440 total de minutos del día, 
	// 23 = 1380 
	// 1  = 60
	
	//60 -1380 = -1320
	//si es menor a 0 al sumarle los 1440 nos compensa
	// el reinicio del reloj
	// 120 min = 2hrs
    Si minutosEstacionado < 0 Entonces
        minutosEstacionado <- minutosEstacionado + 1440
    FinSi
	
	// Cobramos por fracciones designado en tarifa
	// trunc corta los decimales
	// 32 / 15 = 2.133 = 2
	//MOD lo que sobra de la
	//division 32 / 15 sobra 2
	// 2>0 por lo que hace + 1 
	
    fracciones <- trunc(minutosEstacionado / 15)
    Si (minutosEstacionado MOD 15) > 0 Entonces
        fracciones <- fracciones + 1
    FinSi
	
	totalPagar <- fracciones * tarifa
	
	Limpiar Pantalla
    Escribir "Tiempo estacionado: ", minutosEstacionado, " minutos."
    Escribir "Fracciones a cobrar (15 min): ", fracciones
    Escribir "Total a pagar: $", totalPagar
    Escribir "¡Esperamos verlo de nuevo!"
	
FinAlgoritmo

Algoritmo SistemaEcucacionesCrammer2x2
	Dimension ecuaciones(2,3)
	determinante_sistema = 0
	valor_x = 0
	valor_y = 0
	Escribir "Ingresa el primer coeficiente de x"
	Leer ecuaciones(1,1)
	Escribir "Ingresa la segunda coeficiente de x"
	Leer ecuaciones(1,2)
	Escribir "Ingresa la primer coeficiente de y"
	Leer ecuaciones(2,1)
	Escribir "Ingresa la segunda coeficiente de y"
	Leer ecuaciones(2,2)
	Escribir "Ingresa el primer coeficiente independiente"
	Leer ecuaciones(1,3)
	Escribir "Ingresa el segundocoeficiente independiente"
	Leer ecuaciones(2,3)
	
	determinante_sistema = ( (ecuaciones(1,1) * ecuaciones(2,2)) - (ecuaciones(2,1) * ecuaciones(1,2)) )
	valor_x = ( (ecuaciones(1,3) * ecuaciones(2,2)) - (ecuaciones(2,3) * ecuaciones(1,2))  )
	valor_x = (valor_x / determinante_sistema)
	valor_y = ( (ecuaciones(1,1) * ecuaciones(2,3)) - (ecuaciones(2,1) * ecuaciones(1,3))  )
	valor_y = (valor_y / determinante_sistema)
	
	
	Escribir "Este es el determinante del sistema:", determinante_sistema
	Escribir "Este es el valor de x:", valor_x
	Escribir "Este es el valor de y:", valor_y
	
	
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Escribir "";
		Para j<-1 Hasta 2 Con Paso 1 Hacer
			Si j==2 Entonces
				Si ecuaciones(i,2) < 0
					Escribir Sin Saltar "-"
				SiNo
						Escribir Sin Saltar "+"	
				FinSi
				Escribir Sin Saltar ecuaciones(i,j),"(",(valor_y),")"
			SiNo
				Escribir Sin Saltar ecuaciones(i,j),"(",(valor_x),")"
			Fin Si
		Fin Para
		Si i=1 Entonces
			Escribir "=", ecuaciones(1,3)
		SiNo
			Escribir "=", ecuaciones(2,3)
		Fin Si
		
	Fin Para
FinAlgoritmo

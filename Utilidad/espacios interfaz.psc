Algoritmo sin_titulo
	
	leer nombre
	largo = Longitud(nombre)
	Dimension largo_nombre[30]
	para a = 1 hasta 30 Con Paso 1 Hacer
		largo_nombre[a] = " "
	FinPara
	Para a = 1 hasta largo Con Paso 1 Hacer
		largo_nombre[a] = Subcadena(nombre,a,a)
	FinPara
	
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	
	Escribir "x      Un gusto " Sin Saltar
	Para a=1 Hasta 30 Con Paso 1 Hacer
		
		Escribir largo_nombre[a] Sin Saltar
	FinPara
	Escribir "                                                                                                  x"
	Escribir "x                                                                                                                                               x"
FinAlgoritmo

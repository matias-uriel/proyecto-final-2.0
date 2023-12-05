Algoritmo sin_titulo
	leer nombre
	largo = Longitud(nombre)
	para a = 1 hasta largo Con Paso 1 Hacer
		prueba = Subcadena(nombre,a,a)
		si prueba = "1" o prueba = "2" o prueba = "3" o prueba = "4" o prueba = "5" o prueba = "6" o prueba = "7" o prueba = "8" o prueba = "9" Entonces
			Escribir "Tu nombre es un numero?"
			a = largo + 1
		FinSi
		si a == largo Entonces
			Escribir "Tu nombre es " nombre
		FinSi
	FinPara
FinAlgoritmo

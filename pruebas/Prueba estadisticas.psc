Funcion palabra_con_espacios (palabra,num,vector Por Referencia)
	largo = Longitud(palabra)
	para a = 1 hasta num Con Paso 1 Hacer
		vector[a] = " "
	FinPara
	Para a = 1 hasta largo Con Paso 1 Hacer
		vector[a] = Subcadena(palabra,a,a)
	FinPara
FinFuncion

funcion respuesta = elem_habilidad (elemento)
	si elemento == 1 Entonces
		respuesta = "Planta"
	sino si elemento == 2 Entonces
			respuesta = "Fuego"	
		sino si elemento == 3 Entonces
				respuesta = "Agua"	
			sino si elemento == 4 Entonces
					respuesta = "Lucha"
				sino si elemento == 5 Entonces
						respuesta = "Acero"
					sino si elemento == 6 Entonces
							respuesta = "Normal"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion volver = detalles_habilidades (pikmin,nombres_pikmin,elemento,esp_atq,atq,def,esp_def,rapidez,habilidades_aliado_name,dmg_aliado,elemento_habilidad,precision_habilidad,objetivo)
	Dimension nombre[10],elementos[10],habilidad_1[15],habilidad_2[15],habilidad_3[15],habilidad_4[15],debilidades[15],fortalezas[15],hab_elem_1[15],hab_elem_2[15],hab_elem_3[15],hab_elem_4[15]
	segun elemento Hace
		1: 	Nelemento = "Planta"
		2:	Nelemento = "Fuego"
		3:	Nelemento = "Agua"
		4:	Nelemento = "Lucha"
		5:	Nelemento = "Acero"
		6:	Nelemento = "Normal"
	FinSegun
	si elemento == 1 Entonces
		debilidad = "Fuego/Acero"
		fortaleza = "Agua/Normal"
		elem = "Planta"
	sino si elemento == 2 Entonces
			debilidad = "Agua/Normal"
			fortaleza = "Planta/Lucha"
			elem = "Fuego"
		sino si elemento == 3 Entonces
				debilidad = "Planta/Lucha"
				fortaleza = "Fuego/Acero"
				elem = "Agua"
			sino si elemento == 4 Entonces
					debilidad = "Acero/Fuego"
					fortaleza = "Normal/Agua"
					elem = "Lucha"
				sino si elemento == 5 Entonces
						debilidad = "Normal/Agua"
						fortaleza = "Lucha/Planta"
						elem = "Acero"
					sino si elemento == 6 Entonces
							debilidad = "Lucha/Planta"
							fortaleza = "Acero/Fuego"
							elem = "Normal"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	hab_1 = elem_habilidad(elemento_habilidad[1])
	hab_2 = elem_habilidad(elemento_habilidad[2])
	hab_3 = elem_habilidad(elemento_habilidad[3])
	hab_4 = elem_habilidad(elemento_habilidad[4])
	
	palabra_con_espacios(nombres_pikmin,10,nombre)
	palabra_con_espacios(Nelemento,10,elementos)
	palabra_con_espacios(habilidades_aliado_name[1],15,habilidad_1)
	palabra_con_espacios(habilidades_aliado_name[2],15,habilidad_2)
	palabra_con_espacios(habilidades_aliado_name[3],15,habilidad_3)
	palabra_con_espacios(habilidades_aliado_name[4],15,habilidad_4)
	palabra_con_espacios(debilidad,15,debilidades)
	palabra_con_espacios(fortaleza,15,fortalezas)
	palabra_con_espacios(hab_1,15,hab_elem_1)
	palabra_con_espacios(hab_2,15,hab_elem_2)
	palabra_con_espacios(hab_3,15,hab_elem_3)
	palabra_con_espacios(hab_4,15,hab_elem_4)
	Borrar Pantalla
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "x                                                                 x                                                                             x"
	Escribir "x        Nombre: " Sin Saltar
	Para a=1 Hasta 10 Con Paso 1 Hacer 
		Escribir nombre[a] Sin Saltar
	FinPara
	escribir "                                       x                           Estadisticas:                                     x"
	Escribir "x                                                                 x        Atq: " atq "                                                               x"
	Escribir "x        Elemento: " Sin Saltar
	Para a=1 Hasta 10 Con Paso 1 Hacer 
		Escribir elementos[a] Sin Saltar
	FinPara
	escribir "                                     x                                                                             x"
	Escribir "x                                                                 x        Atq esp: " esp_atq "                                                           x"
	Escribir "x        Debilidad: " Sin Saltar
	Para a=1 Hasta 15 Con Paso 1 Hacer 
		Escribir debilidades[a] Sin Saltar
	FinPara
	escribir "                               x                                                                             x"
	Escribir "x                                                                 x        Defensa: " def "                                                           x"
	Escribir "x        Fortaleza: " Sin Saltar
	Para a=1 Hasta 15 Con Paso 1 Hacer 
		Escribir fortalezas[a] Sin Saltar
	FinPara
	escribir "                               x                                                                             x"
	Escribir "x                                                                 x        Defensa esp: " esp_def "                                                       x"
	Escribir "x                                                                 x                                                                             x"
	Escribir "x                                                                 x        Rapidez: " rapidez "                                                           x"
	Escribir "x                                                                 x                                                                             x"
	Escribir "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        MOVIMIENTOS:                                                                                                                           x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        - " Sin Saltar
	Para a=1 Hasta 15 Con Paso 1 Hacer 
		Escribir habilidad_1[a] Sin Saltar
	FinPara
	escribir " |     Tipo de ataque: " Sin Saltar
	Para a=1 Hasta 10 Con Paso 1 Hacer 
		Escribir hab_elem_1[a] Sin Saltar
	FinPara
	escribir " |     Daño: " Sin Saltar
	si dmg_aliado[1] >= 0 y dmg_aliado[1] <= 9 Entonces
		escribir dmg_aliado[1] " DPH     |     " Sin Saltar
	sino si dmg_aliado[1] >= 10 y dmg_aliado[1] <= 99 Entonces
			escribir dmg_aliado[1] " DPH     |     " Sin Saltar	
		FinSi
	FinSi
	Escribir "Precision: " Sin Saltar
	si precision_habilidad[1] >= 0 y precision_habilidad[1] <= 9 Entonces
		escribir precision_habilidad[1] "0%     |     " Sin Saltar
	sino si precision_habilidad[1] == 10 Entonces
			escribir precision_habilidad[1] "0%    |     " Sin Saltar	
		FinSi
	FinSi
	escribir "Objetivo: " Sin Saltar
	si objetivo[1] == 0 Entonces
		Escribir "Enemigo" Sin Saltar
	SiNo
		Escribir "Propio " Sin Saltar
	FinSi
	escribir "              x"
	Escribir "x        - " Sin Saltar
	Para a=1 Hasta 15 Con Paso 1 Hacer 
		Escribir habilidad_2[a] Sin Saltar
	FinPara
	escribir " |     Tipo de ataque: " Sin Saltar
	Para a=1 Hasta 10 Con Paso 1 Hacer 
		Escribir hab_elem_2[a] Sin Saltar
	FinPara
	escribir " |     Daño: " Sin Saltar
	si dmg_aliado[1] >= 0 y dmg_aliado[1] <= 9 Entonces
		escribir dmg_aliado[2] " DPH     |     " Sin Saltar
	sino si dmg_aliado[1] >= 10 y dmg_aliado[1] <= 99 Entonces
			escribir dmg_aliado[2] " DPH     |     " Sin Saltar	
		FinSi
	FinSi
	Escribir "Precision: " Sin Saltar
	si precision_habilidad[2] >= 0 y precision_habilidad[2] <= 9 Entonces
		escribir precision_habilidad[2] "0%     |     " Sin Saltar
	sino si precision_habilidad[2] == 10 Entonces
			escribir precision_habilidad[2] "0%    |     " Sin Saltar	
		FinSi
	FinSi
	escribir "Objetivo: " Sin Saltar
	si objetivo[2] == 0 Entonces
		Escribir "Enemigo" Sin Saltar
	SiNo
		Escribir "Propio " Sin Saltar
	FinSi
	escribir "              x"
	Escribir "x        - " Sin Saltar
	Para a=1 Hasta 15 Con Paso 1 Hacer 
		Escribir habilidad_3[a] Sin Saltar
	FinPara
	escribir " |     Tipo de ataque: " Sin Saltar
	Para a=1 Hasta 10 Con Paso 1 Hacer 
		Escribir hab_elem_3[a] Sin Saltar
	FinPara
	escribir " |     Daño: " Sin Saltar
	si dmg_aliado[1] >= 0 y dmg_aliado[1] <= 9 Entonces
		escribir dmg_aliado[3] " DPH     |     " Sin Saltar
	sino si dmg_aliado[1] >= 10 y dmg_aliado[1] <= 99 Entonces
			escribir dmg_aliado[3] " DPH     |     " Sin Saltar	
		FinSi
	FinSi
	Escribir "Precision: " Sin Saltar
	si precision_habilidad[3] >= 0 y precision_habilidad[3] <= 9 Entonces
		escribir precision_habilidad[3] "0%     |     " Sin Saltar
	sino si precision_habilidad[3] == 10 Entonces
			escribir precision_habilidad[3] "0%    |     " Sin Saltar	
		FinSi
	FinSi
	escribir "Objetivo: " Sin Saltar
	si objetivo[3] == 0 Entonces
		Escribir "Enemigo" Sin Saltar
	SiNo
		Escribir "Propio " Sin Saltar
	FinSi
	escribir "              x"
	Escribir "x        - " Sin Saltar
	Para a=1 Hasta 15 Con Paso 1 Hacer 
		Escribir habilidad_4[a] Sin Saltar
	FinPara
	escribir " |     Tipo de ataque: " Sin Saltar
	Para a=1 Hasta 10 Con Paso 1 Hacer 
		Escribir hab_elem_4[a] Sin Saltar
	FinPara
	escribir " |     Daño: " Sin Saltar
	si dmg_aliado[1] >= 0 y dmg_aliado[1] <= 9 Entonces
		escribir dmg_aliado[4] " DPH     |     " Sin Saltar
	sino si dmg_aliado[1] >= 10 y dmg_aliado[1] <= 99 Entonces
			escribir dmg_aliado[4] " DPH     |     " Sin Saltar	
		FinSi
	FinSi
	Escribir "Precision: " Sin Saltar
	si precision_habilidad[4] >= 0 y precision_habilidad[4] <= 9 Entonces
		escribir precision_habilidad[4] "0%     |     " Sin Saltar
	sino si precision_habilidad[4] == 10 Entonces
			escribir precision_habilidad[4] "0%    |     " Sin Saltar	
		FinSi
	FinSi
	escribir "Objetivo: " Sin Saltar
	si objetivo[4] == 0 Entonces
		Escribir "Enemigo" Sin Saltar
	SiNo
		Escribir "Propio " Sin Saltar
	FinSi
	escribir "              x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        0. Atras                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	leer volver
FinFuncion
Algoritmo sin_titulo
	pikmin = 2
	Dimension dmg_aliado[4],habilidades_aliado_name[4],elemento_habilidad[4],precision_habilidad[4],objetivo[4]
	Dimension nombres_pikmin[6]
	Dimension tipo[6],esp_atq[6],atq[6],def[6],esp_def[6],rapidez[6],elemento[6]
	
	esp_atq[1]= 5; atq[1]= 	5; def[1]= 	5; esp_def[1]= 	5; rapidez[1]= 5; elemento[1] = 1 // Bulpaul
	esp_atq[2]= 5; atq[2]= 	5; def[2]= 	5; esp_def[2]= 	5; rapidez[2]= 5; elemento[2] = 3 // Bajielim 
	esp_atq[3]= 5; atq[3]= 	5; def[3]= 	5; esp_def[3]= 	5; rapidez[3]= 5; elemento[3] = 4 // Samael
	esp_atq[4]= 5; atq[4]= 	5; def[4]= 	5; esp_def[4]= 	5; rapidez[4]= 4; elemento[4] = 2 // TAhiti
	esp_atq[5]= 5; atq[5]= 	5; def[5]= 	5; esp_def[5]= 	5; rapidez[5]= 4; elemento[5] = 6 // Taigre
	esp_atq[6]= 5; atq[6]= 	5; def[6]= 	5; esp_def[6]= 	5; rapidez[6]= 4; elemento[6] = 5 // Dolarcium
	
	nombres_pikmin[1] = "Bulpaul"
	nombres_pikmin[2] = "Bajielim"
	nombres_pikmin[3] = "Samael"
	nombres_pikmin[4] = "TAhiti"
	nombres_pikmin[5] = "Taigre"
	nombres_pikmin[6] = "Dolarcium"
	
	habilidades_aliado_name[1] = "Latigazo"
	dmg_aliado[1] = 5
	elemento_habilidad[1] = 6
	precision_habilidad[1] = 8
	objetivo[1] = 0
	
	habilidades_aliado_name[2] = "fotosentir"
	dmg_aliado[2] = 0
	elemento_habilidad[2] = 1
	precision_habilidad[2] = 10
	objetivo[2] = 1
	
	habilidades_aliado_name[3] = "rayo solar"
	dmg_aliado[3] = 8
	elemento_habilidad[3] = 1
	precision_habilidad[3] = 5
	objetivo[3] = 0
	
	habilidades_aliado_name[4] = "Absorber"
	dmg_aliado[4] = 5
	elemento_habilidad[4] = 1
	precision_habilidad[4] = 10
	objetivo[4] = 0
	
	volver = detalles_habilidades(pikmin,nombres_pikmin[pikmin],elemento[pikmin],esp_atq[pikmin],atq[pikmin],def[pikmin],esp_def[pikmin],rapidez[pikmin],habilidades_aliado_name,dmg_aliado,elemento_habilidad,precision_habilidad,objetivo)
FinAlgoritmo

// Funcion anti mike
Funcion anti_mike (pikmin,enemigo,hp_1,hp_2,ene_1,ene_2)
	Borrar Pantalla
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "xx                                                                                                                                             xx"
	Escribir "xx                                                                                                                                             xx"
	Escribir "xx       Mike esa opcion no existe...                                                                                                          xx"
	Escribir "xx                                                                                                                                             xx"
	Escribir "xx                                                                                                                                             xx"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Esperar 1 Segundos
FinFuncion
// Funcion complementaria para informacion
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
// Funcion de informacion
Funcion detalles_habilidades (pikmin,nombres_pikmin,elemento,esp_atq,atq,def,esp_def,rapidez,habilidades_name,dmg,elemento_habilidad,precision_habilidad,objetivo)
	Dimension nombre[10],elementos[10],habilidad_1[15],habilidad_2[15],habilidad_3[15],habilidad_4[15],debilidades[15],fortalezas[15],hab_elem_1[15],hab_elem_2[15],hab_elem_3[15],hab_elem_4[15]
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
	palabra_con_espacios(elem,10,elementos)
	palabra_con_espacios(habilidades_name[1],15,habilidad_1)
	palabra_con_espacios(habilidades_name[2],15,habilidad_2)
	palabra_con_espacios(habilidades_name[3],15,habilidad_3)
	palabra_con_espacios(habilidades_name[4],15,habilidad_4)
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
	si dmg[1] >= 0 y dmg[1] <= 9 Entonces
		escribir dmg[1] " DPH     |     " Sin Saltar
	sino si dmg[1] >= 10 y dmg[1] <= 99 Entonces
			escribir dmg[1] " DPH    |     " Sin Saltar	
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
	si dmg[2] >= 0 y dmg[2] <= 9 Entonces
		escribir dmg[2] " DPH     |     " Sin Saltar
	sino si dmg[2] >= 10 y dmg[2] <= 99 Entonces
			escribir dmg[2] " DPH    |     " Sin Saltar	
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
	si dmg[3] >= 0 y dmg[3] <= 9 Entonces
		escribir dmg[3] " DPH     |     " Sin Saltar
	sino si dmg[3] >= 10 y dmg[3] <= 99 Entonces
			escribir dmg[3] " DPH    |     " Sin Saltar	
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
	si dmg[4] >= 0 y dmg[4] <= 9 Entonces
		escribir dmg[4] " DPH     |     " Sin Saltar
	sino si dmg[4] >= 10 y dmg[4] <= 99 Entonces
			escribir dmg[4] " DPH    |     " Sin Saltar	
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
	Escribir "x        Pulse cualquier tecla para volver...                                                                                                   x"
	Escribir "x                                                                                                                                               x"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
FinFuncion
// Funcion de la mochila
Funcion objeto <- mochila (consumibles)
	Borrar Pantalla
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                             MOCHILA           x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     Objetos:                                                                  x      Descripcion:                                             x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     1. Actron 100mg:  " consumibles[1]    " Disponibles                                           x      1. Te cura 30 puntos de vida                             x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     2. Actron 500mg:  " consumibles[2]      " Disponibles                                           x      2. Te cura 60 puntos de vida                             x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     3. Actron 1g:  " consumibles[3]     " Disponibles                                              x      3. Te cura toda la vida                                  x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     4. Monster:  " consumibles[4]       " Disponibles                                                x      4. Te da 15 puntos de energia	                            x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     5. Monster Ultra:  " consumibles[5]        " Disponibles                                          x      5. Te da 30 puntos de energia                            x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     0. Atras                                                                  x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	leer objeto
FinFuncion
// Funcion que muestra la eleccion de accion primaria
Funcion accion <- interfaz_principal (pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,nombre,tipo_interfaz)
	nombre = nombre + "?"
	Dimension nombre_pikmin[15]
	palabra_con_espacios(nombre,15,nombre_pikmin)
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
	segun tipo_interfaz hacer
	1:
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "xx                                                                                                   xx                                        xx"
		Escribir "xx                                                                                                   xx       1. Luchar       2. Mochila       xx"
		Escribir "xx       Que hara " Sin Saltar
		Para b=1 Hasta 15 Con Paso 1 Hacer
			Escribir nombre_pikmin[b] Sin Saltar
		FinPara
		Escribir "                                                                    xx                                        xx"
		Escribir "xx                                                                                                   xx       3. Info                          xx"
		Escribir "xx                                                                                                   xx                                        xx"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		leer accion
	2:
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "xx                                                                                                   xx                                        xx"
		Escribir "xx                                                                                                   xx       1. Luchar       2. Mochila       xx"
		Escribir "xx       Que hara " Sin Saltar
		Para b=1 Hasta 15 Con Paso 1 Hacer
			Escribir nombre_pikmin[b] Sin Saltar
		FinPara
		Escribir "                                                                    xx                                        xx"
		Escribir "xx                                                                                                   xx       3. Info         4. Pikmin        xx"
		Escribir "xx                                                                                                   xx                                        xx"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		leer accion
	FinSegun
FinFuncion
// Funcion que calcula la evasion
Funcion evasion <- precision (precision_habilidad)
	Segun precision_habilidad Hacer
		5:
			probabilidad = Aleatorio(1,100)
			si probabilidad >= 1 y probabilidad <= 50 Entonces
				evasion = 1
			SiNo
				evasion = 0
			FinSi
		6:	
			probabilidad = Aleatorio(1,100)
			si probabilidad >= 1 y probabilidad <= 60 Entonces
				evasion = 1
			SiNo
				evasion = 0
			FinSi
		7:
			probabilidad = Aleatorio(1,100)
			si probabilidad >= 1 y probabilidad <= 70 Entonces
				evasion = 1
			SiNo
				evasion = 0
			FinSi
		8:
			probabilidad = Aleatorio(1,100)
			si probabilidad >= 1 y probabilidad <= 80 Entonces
				evasion = 1
			SiNo
				evasion = 0
			FinSi
		9:
			probabilidad = Aleatorio(1,100)
			si probabilidad >= 1 y probabilidad <= 90 Entonces
				evasion = 1
			SiNo
				evasion = 0
			FinSi
		10:
			evasion = 1
	FinSegun
FinFuncion
// Funcion calcula la categoria del ataque
Funcion categoria <- dano (ataque,ataque_esp,habilidad Por Referencia)
	Si ataque_esp > ataque Entonces
		Segun ataque_esp Hacer
			1:
				habilidad = habilidad + ataque_esp
				categoria = 0
			2:
				habilidad = habilidad + ataque_esp
				categoria = 0
			3:
				habilidad = habilidad + ataque_esp
				categoria = 0
			4:
				habilidad = habilidad + ataque_esp
				categoria = 0
			5:
				habilidad = habilidad + ataque_esp
				categoria = 0
			6:
				habilidad = habilidad + ataque_esp
				categoria = 0
			7:
				habilidad = habilidad + ataque_esp
				categoria = 0
			8:
				habilidad = habilidad + ataque_esp
				categoria = 0
			9:
				habilidad = habilidad + ataque_esp
				categoria = 0
			10:	
				habilidad = habilidad + ataque_esp
				categoria = 0
		FinSegun
	sino 
		Segun ataque Hacer
			1:
				habilidad = habilidad + ataque
				categoria = 1
			2:
				habilidad = habilidad + ataque
				categoria = 1
			3:
				habilidad = habilidad + ataque
				categoria = 1
			4:
				habilidad = habilidad + ataque
				categoria = 1
			5:
				habilidad = habilidad + ataque
				categoria = 1
			6:
				habilidad = habilidad + ataque
				categoria = 1
			7:
				habilidad = habilidad + ataque
				categoria = 1
			8:
				habilidad = habilidad + ataque
				categoria = 1
			9:
				habilidad = habilidad + ataque
				categoria = 1
			10:	
				habilidad = habilidad + ataque
				categoria = 1
		FinSegun
	FinSi
FinFuncion

// Funcion calcula daño dependiendo el elemento:
Funcion dato <- valor_de_ataque_aliado (habilidad Por Referencia, elemento_habilidad, elemento_opuesto, variable_IA Por Referencia)
	Si elemento_habilidad == 3 y elemento_opuesto == 2 Entonces
		habilidad = habilidad * 2
		dato = 4
		variable_IA = Verdadero
	Sino si elemento_habilidad == 2 y elemento_opuesto == 1 Entonces
			habilidad = habilidad * 2
			dato = 4
			variable_IA = Verdadero
		Sino si elemento_habilidad == 1 y elemento_opuesto == 3 Entonces
				habilidad = habilidad * 2
				dato = 4
				variable_IA = Verdadero
			Sino si elemento_habilidad == 5 y elemento_opuesto == 4 Entonces
					habilidad = habilidad * 2
					dato = 4
					variable_IA = Verdadero
				Sino si elemento_habilidad == 6 y elemento_opuesto == 5 Entonces
						habilidad = habilidad * 2
						dato = 4
						variable_IA = Verdadero
					Sino si elemento_habilidad == 4 y elemento_opuesto == 6 Entonces
							habilidad = habilidad * 2
							dato = 4
							variable_IA = Verdadero
						Sino si elemento_habilidad == 2 y elemento_opuesto == 4 Entonces
								habilidad = habilidad * 1.5
								dato = 3
								variable_IA = Verdadero
							Sino si elemento_habilidad == 1 y elemento_opuesto == 6 Entonces
									habilidad = habilidad * 1.5
									dato = 3
									variable_IA = Verdadero
								Sino si elemento_habilidad == 3 y elemento_opuesto == 5 Entonces
										habilidad = habilidad * 1.5
										dato = 3
										variable_IA = Verdadero
									Sino si elemento_habilidad == 4 y elemento_opuesto == 3 Entonces
											habilidad = habilidad * 1.5
											dato = 3
											variable_IA = Verdadero
										Sino si elemento_habilidad == 5 y elemento_opuesto == 1 Entonces
												habilidad = habilidad * 1.5
												dato = 3
												variable_IA = Verdadero
											Sino si elemento_habilidad == 6 y elemento_opuesto == 2 Entonces
													habilidad = habilidad * 1.5
													dato = 3
													variable_IA = Verdadero
												sino Si elemento_habilidad == 2 y elemento_opuesto == 3 Entonces
														habilidad = habilidad * 0.5
														dato = 1
													Sino si elemento_habilidad == 1 y elemento_opuesto == 2 Entonces
															habilidad = habilidad * 0.5
															dato = 1
														Sino si elemento_habilidad == 3 y elemento_opuesto == 1 Entonces
																habilidad = habilidad * 0.5
																dato = 1
															Sino si elemento_habilidad == 4 y elemento_opuesto == 5 Entonces
																	habilidad = habilidad * 0.5
																	dato = 1
																Sino si elemento_habilidad == 5 y elemento_opuesto == 6 Entonces
																		habilidad = habilidad * 0.5
																		dato = 1
																	Sino si elemento_habilidad == 6 y elemento_opuesto == 4 Entonces
																			habilidad = habilidad * 0.5
																			dato = 1
																		Sino si elemento_habilidad == 4 y elemento_opuesto == 2 Entonces
																				habilidad = habilidad * 0.8
																				dato = 1
																			Sino si elemento_habilidad == 6 y elemento_opuesto == 1 Entonces
																					habilidad = habilidad * 0.8
																					dato = 2
																				Sino si elemento_habilidad == 5 y elemento_opuesto == 3 Entonces
																						habilidad = habilidad * 0.8
																						dato = 2
																					Sino si elemento_habilidad == 3 y elemento_opuesto == 4 Entonces
																							habilidad = habilidad * 0.8
																							dato = 2
																						Sino si elemento_habilidad == 1 y elemento_opuesto == 5 Entonces
																								habilidad = habilidad * 0.8
																								dato = 2
																							Sino si elemento_habilidad == 2 y elemento_opuesto == 6 Entonces
																									habilidad = habilidad * 0.8
																									dato = 2
																								SiNo
																									habilidad = habilidad * 1
																									dato = 0
																								Finsi
																							Finsi
																						Finsi
																					Finsi
																				Finsi
																			Finsi
																		Finsi
																	Finsi
																Finsi
															Finsi
														Finsi
													FinSi
												Finsi
											Finsi
										Finsi
									Finsi
								Finsi
							Finsi
						Finsi
					Finsi
				Finsi
			Finsi
		Finsi
	FinSi
FinFuncion
// Funcion texto de "Ha usado..."
funcion hab_usada (pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidad)
	Borrar Pantalla
	num_ref = 15
	Dimension vector_palabra[num_ref]
	palabra_con_espacios(habilidad,num_ref,vector_palabra)
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	animacion_atacante(pikmin,hp_1,hp_2,ene_1,ene_2)
	Segun pikmin Hacer
		1:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Bulpaul ha usado " Sin Saltar
			Para b = 1 Hasta num_ref Con Paso 1 Hacer
				Escribir vector_palabra[b] Sin Saltar
			FinPara
			Escribir "                                                                                                      xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		2:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Bajielim ha usado " Sin Saltar 
			Para b = 1 Hasta num_ref Con Paso 1 Hacer
				Escribir vector_palabra[b] Sin Saltar
			FinPara
			Escribir "                                                                                                      xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		3:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Samael ha usado " Sin Saltar  
			Para b = 1 Hasta num_ref Con Paso 1 Hacer
				Escribir vector_palabra[b] Sin Saltar
			FinPara
			Escribir "                                                                                                      xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	FinSegun
	Esperar 2 Segundos
FinFuncion
// Funcion que calcula el critico
Funcion critico (habilidad Por Referencia,enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
	prob_crit = Aleatorio(0,100)
	Si prob_crit >= 0 y prob_crit <= 5 Entonces
		habilidad = habilidad * 2
		Borrar Pantalla
		interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
		interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx       El golpe fue critico                                                                                                                  xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Esperar 2 Segundos
	FinSi
FinFuncion
// Funcion que calcula la reduccion de daño
Funcion arreglo_de_defensa (habilidad Por Referencia,defensa,defensa_esp,categoria)
	Segun categoria Hacer
		0:
			Segun defensa_esp Hacer
				1:
					habilidad = habilidad*0.90 	// 10% de reduccion de daño
				2:
					habilidad = habilidad*0.85	// 15% de reduccion de daño
				3:
					habilidad = habilidad*0.80	// 20% de reduccion de daño
				4:
					habilidad = habilidad*0.70	// 30% de reduccion de daño
				5:
					habilidad = habilidad*0.60	// 40% de reduccion de daño
			FinSegun
		1:
			Segun defensa Hacer
				1:
					habilidad = habilidad*0.90 	// 10% de reduccion de daño
				2:
					habilidad = habilidad*0.85	// 15% de reduccion de daño
				3:
					habilidad = habilidad*0.80	// 20% de reduccion de daño
				4:
					habilidad = habilidad*0.70	// 30% de reduccion de daño
				5:
					habilidad = habilidad*0.60	// 40% de reduccion de daño
			FinSegun
	FinSegun
FinFuncion
// Funcion que calcula los espacios para la interfaz
Funcion palabra_con_espacios (palabra,num,vector Por Referencia)
	largo = Longitud(palabra)
	para a = 1 hasta num Con Paso 1 Hacer
		vector[a] = " "
	FinPara
	Para a = 1 hasta largo Con Paso 1 Hacer
		vector[a] = Subcadena(palabra,a,a)
	FinPara
FinFuncion
// Funcion para llamar la parte grafica
Funcion interfaz_pikmin (pikmin,hp_1,hp_2,ene_1,ene_2)
	segun pikmin Hacer
		1:
			Escribir "x                  (\_    _/)                                                                                                                   x"
			Escribir "x                   )\_  _/(                                                                                                                    x"
			Escribir "x                   )o\_ /o(                                                                                                                    x"
			Escribir "x                    ) \/ (                                                                                                                     x"
			Escribir "x                   //\ //\\                                                                oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                  // \\/  \\                                                               xx  bulpaul                               xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x                 //  /\\   \\                                                              xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x                 //  /\\   \\                                                              xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x                 //  /\\   \\                                                              xx                      HP: " hp_1 "/100         xx        x"
				Finsi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                //  // \\   \\                                                             xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                //  // \\   \\                                                             xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x               ()   ¿   ¿   ()                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		2:
			Escribir "x                                                                                                                                               x"
			Escribir "x                ___  ___                                                                                                                       x"
			Escribir "x                \0 \/ 0 \__                                                                                                                    x"
			Escribir "x                (______) \/                                                                                                                    x"
			Escribir "x                (| | |  ) \                                                                oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x               (         ) \                                                               xx  Bajielim                              xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x               (         )  \_ /|                                                          xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x               (         )  \_ /|                                                          xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x               (         )  \_ /|                                                          xx                      HP: " hp_1 "/100         xx        x"	
				FinSi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                (|_|_|_\)_____]=|                                                          xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                (|_|_|_\)_____]=|                                                          xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x                 \_____/  \/   \|                                                          oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		3:
			Escribir "x           ___                   ___                                                                                                           x"
			Escribir "x          (__)\     /\ /\       /(__)                                                                                                          x"
			Escribir "x          (__) \___(O Y O)_____/ (__)                                                                                                          x"
			Escribir "x          (__) _____ U U  ______ (__)                                                                                                          x"
			Escribir "x          (__)/     \    /      \(__)                                                      oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                     \@ /                                                                  xx  Samael                                xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x                     //\\                                                                  xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x                     //\\                                                                  xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x                     //\\                                                                  xx                      HP: " hp_1 "/100         xx        x"	
				FinSi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                    //  \\                                                                 xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                    //  \\                                                                 xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x                    \\  //                                                                 oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                   _//  \\_                                                                                                                    x"
		4:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                     Z   Z   Z                                 x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                Z   Z  Z                                x"
			Escribir "x           ll  TAhiti                                ll                                              Z   Z   Z                                 x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                               Z____Z                                   x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                               Z____Z                                   x"	
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                               Z____Z                                   x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                               /_  _\                                   x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                               /_  _\                                   x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                              / - \- \                                  x"
			Escribir "x                                                                                                    /    o   \                                 x"
			Escribir "x                                                                                                   /          \                                x"
			Escribir "x                                                                                                  /____________\                               x"
			Escribir "x                                                                                                   ( (       ( (                               x"
			Escribir "x                                                                                                   _)_)_     _)_)_                             x"
		5:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                   /|        |\                                x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                           /||        ||\                               x"
			Escribir "x           ll  Taigre                                ll                                          /.||        ||.\   ..                         x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                          \.\|________|/./   \.\                        x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                          \.\|________|/./   \.\                        x"	
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                          \.\|________|/./   \.\                        x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                           \..|.\../..|./     \.\                       x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                           \..|.\../..|./     \.\                       x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                            \|(O)><(O)|/\     /./                       x"
			Escribir "x                                                                                                    \________/..\   /./                        x"
			Escribir "x                                                                                                     /.__..__....\_/./                         x"
			Escribir "x                                                                                                    /_/ /_/ /.___..\/                          x"
			Escribir "x                                                                                                   /_/ /_/  \_/  \_/                           x"
			Escribir "x                                                                                                  ((( (((   ((   ((                            x"
		6:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                    $        $                                 x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                              $      $                                  x"
			Escribir "x           ll  Dolarcium                             ll                                               $____$                                   x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                          ((   /($)($)  ))                              x"
			Sino si hp_2 >= 10 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100        ll                                          ((   /($)($)  ))                              x"
				SiNo
				Escribir "x           ll                      HP: " hp_2 "/100         ll                                          ((   /($)($)  ))                              x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                           \\ C   v  ) //                               x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                           \\ C   v  ) //                               x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                           ( \_\ -- /_/ )                               x"
			Escribir "x                                                                                                   \__(    )__/                                x"
			Escribir "x                                                                                                      _(  )_                                   x"
			Escribir "x                                                                                                      //\/\\                                   x"
			Escribir "x                                                                                                     //    \\                                  x"
			Escribir "x                                                                                                     U      U                                  x"
	FinSegun
FinFuncion
// Funcion de espera
Funcion espera (enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
	para a = 1 hasta 3 Con Paso 1 Hacer
		Borrar Pantalla
		interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
		interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
		segun a Hacer
			1:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       .                                                                                                                                     xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				esperar 700 miliSegundos
			2:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       . .                                                                                                                                   xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				esperar 700 miliSegundos
			3:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       . . .                                                                                                                                 xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				esperar 700 miliSegundos
		FinSegun
	FinPara	
FinFuncion
//
Funcion interfaz_eficasia (enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia,lado)
	Borrar Pantalla
	segun lado Hacer
		0:
			interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
			animacion_victima(pikmin,hp_1,hp_2,ene_1,ene_2)
		1:
			animacion_victima(enemigo,hp_1,hp_2,ene_1,ene_2)
			interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
	FinSegun
	segun eficasia Hacer
		0:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 1 Milisegundos
		1:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es muy poco efectivo                                                                                                        xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
		2:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es poco efectivo                                                                                                            xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
		3:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es efectivo                                                                                                                 xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
		4:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es muy efectivo                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
	FinSegun
FinFuncion
Funcion cambio_pikmin (pikmin,enemigo,nom_pikmin,hp_1,hp_2,ene_1,ene_2)
	Dimension nombre_pikmin[15]
	Borrar Pantalla
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "x                     x x                                                                   oooooooooooooooooooooooooooooooooooooooooooo        x"
	Escribir "x                   x     x                                                                 xx  ???                                   xx        x"
	Escribir "x                  x---O---x                                                                xx                      HP:  ? /100       xx        x"
	Escribir "x                   x     x                                                                 xx  ENERGIA: ? /50                        xx        x"
	Escribir "x                     x x                                                                   oooooooooooooooooooooooooooooooooooooooooooo        x"
	Escribir "x                                                                                                                                               x"
	palabra_con_espacios(nom_pikmin,15,nombre_pikmin)
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "xx                                                                                                                                             xx"
	Escribir "xx                                                                                                                                             xx"
	Escribir "xx       Sal a la pelea " Sin Saltar
	Para b=1 Hasta 15 Con Paso 1 Hacer
		Escribir nombre_pikmin[b] Sin Saltar
	FinPara
	Escribir "                                                                                                        xx"
	Escribir "xx                                                                                                                                             xx"
	Escribir "xx                                                                                                                                             xx"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Esperar 2 Segundos
	Borrar Pantalla
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
	segun pikmin hacer
		1:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       PAUUUUUL!                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
		2:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       GLU!                                                                                                                                  xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
		3:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       MAEEEEL!!                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
	FinSegun
FinFuncion
// Funcion de la animacion inicial
Funcion pre_combate(enemigo, pikmin, nom_enemigo, nom_pikmin,hp_1,hp_2,ene_1,ene_2)
	num_ref = 15 // valor global
	nom_pikmin = nom_pikmin + "!!!"
	Dimension nombre_enemigo[num_ref],nombre_pikmin[num_ref]
	palabra_con_espacios(nom_pikmin,num_ref,nombre_pikmin)
	palabra_con_espacios(nom_enemigo,num_ref,nombre_enemigo)
	
	para a = 1 Hasta 6 Hacer
		segun a Hacer
			1:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                                                        x"
				Escribir "x           ll  ???                                   ll                                                                                        x"
				Escribir "x           ll                      HP:  ? /100       ll                                                                                        x"
				Escribir "x           ll  ENERGIA: ? /50                        ll                                                                                        x"
				Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                                                        x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
			2:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                                                        x"
				Escribir "x           ll  ???                                   ll                                                 x x                                    x"
				Escribir "x           ll                      HP:  ? /100       ll                                               x     x                                  x"
				Escribir "x           ll  ENERGIA: ? /50                        ll                                              x---O---x                                 x"
				Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                               x     x                                  x"
				Escribir "x                                                                                                        x x                                    x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
			de otro modo:
				segun enemigo hacer
					4:
						interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
					5:
						interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
					6:
						interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
				FinSegun
		FinSegun
		
		segun a Hacer
			5:
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                     x x                                                                   oooooooooooooooooooooooooooooooooooooooooooo        x"
				Escribir "x                   x     x                                                                 xx  ???                                   xx        x"
				Escribir "x                  x---O---x                                                                xx                      HP:  ? /100       xx        x"
				Escribir "x                   x     x                                                                 xx  ENERGIA: ? /50                        xx        x"
				Escribir "x                     x x                                                                   oooooooooooooooooooooooooooooooooooooooooooo        x"
				Escribir "x                                                                                                                                               x"
			6:
				interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
			De Otro Modo:
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                                                                               x"
				Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
				Escribir "x                                                                                           xx  ???                                   xx        x"
				Escribir "x                                                                                           xx                      HP:  ? /100       xx        x"
				Escribir "x                                                                                           xx  ENERGIA: ? /50                        xx        x"
				Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
				Escribir "x                                                                                                                                               x"
		FinSegun
		
		segun a Hacer
			1:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       Que comience el combate contra " Sin Saltar
				Para b=1 Hasta 15 Con Paso 1 Hacer 
					Escribir nombre_enemigo[b] Sin Saltar
				FinPara
				Escribir "                                                                                        xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Esperar 2 Segundos
			2 o 5:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Esperar 1 Segundos
			3:
				segun enemigo hacer
					4:
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx         TAHI-TAHI-TI!!!                                                                                                                     xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 2 Segundos
					5:
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx         MIAU-GRE                                                                                                                            xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 2 Segundos
					6:
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx         DIN-DON                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 2 Segundos
				FinSegun
			4:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       Ve a la pelea " Sin Saltar
				Para b=1 Hasta 15 Con Paso 1 Hacer
					Escribir nombre_pikmin[b] Sin Saltar
				FinPara
				Escribir "                                                                                                         xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Esperar 2 Segundos
			6:
				segun pikmin hacer
					1:
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx       PAUL-PAUL!!!                                                                                                                          xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 2 Segundos
					2:
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx       GLU! GLU! GLU!                                                                                                                        xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 2 Segundos
					3:
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx       MAEL-MAEL!!                                                                                                                           xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 2 Segundos
				FinSegun
		FinSegun
		Borrar Pantalla
	FinPara
FinFuncion
// Funcion animacion del que da el ataque
funcion animacion_atacante (pikmin,hp_1,hp_2,ene_1,ene_2)
	segun pikmin Hacer
		1:
			Escribir "x                        (\_    _/)                                                                                                             x"
			Escribir "x                         )\_  _/(                                                                                                              x"
			Escribir "x                         )*\_ /*(                                                                                                              x"
			Escribir "x                          ) \/ (                                                                                                               x"
			Escribir "x                         //\ //\\                                                          oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                        // \\/  \\                                                         xx  bulpaul                               xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x                       //  /\\   \\                                                        xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x                       //  /\\   \\                                                        xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x                       //  /\\   \\                                                        xx                      HP: " hp_1 "/100         xx        x"
				Finsi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                      //  // \\   \\                                                       xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                      //  // \\   \\                                                       xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x                     ()   ¿   ¿   ()                                                       oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		2:
			Escribir "x                                                                                                                                               x"
			Escribir "x                      ___  ___                                                                                                                 x"
			Escribir "x                      \* \/ * \__                                                                                                              x"
			Escribir "x                      (______) \/                                                                                                              x"
			Escribir "x                      (| | |  ) \                                                          oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                     (         ) \                                                         xx  Bajielim                              xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x                     (         )  \_ /|                                                    xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x                     (         )  \_ /|                                                    xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x                     (         )  \_ /|                                                    xx                      HP: " hp_1 "/100         xx        x"	
				FinSi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                      (|_|_|_\)_____]=|                                                    xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                      (|_|_|_\)_____]=|                                                    xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x                       \_____/  \/   \|                                                    oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                                  x"
		3:
			Escribir "x                 ___                   ___                                                                                                     x"
			Escribir "x                (__)\     /\ /\       /(__)                                                                                                    x"
			Escribir "x                (__) \___(* Y *)_____/ (__)                                                                                                    x"
			Escribir "x                (__) _____ U U  ______ (__)                                                                                                    x"
			Escribir "x                (__)/     \    /      \(__)                                                oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                           \@ /                                                            xx  Samael                                xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x                           //\\                                                            xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x                           //\\                                                            xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x                           //\\                                                            xx                      HP: " hp_1 "/100         xx        x"	
				FinSi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                          //  \\                                                           xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                          //  \\                                                           xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x                          \\  //                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                         _//  \\_                                                                                                              x"
		4:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                               Z   Z   Z                                       x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                          Z   Z  Z                                      x"
			Escribir "x           ll  TAhiti                                ll                                        Z   Z   Z                                       x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                         Z____Z                                         x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                         Z____Z                                         x"	
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                         Z____Z                                         x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                         /_  _\                                         x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                         /_  _\                                         x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                        / * \* \                                        x"
			Escribir "x                                                                                              /    o   \                                       x"
			Escribir "x                                                                                             /          \                                      x"
			Escribir "x                                                                                            /____________\                                     x"
			Escribir "x                                                                                             ( (       ( (                                     x"  
			Escribir "x                                                                                             _)_)_     _)_)_                                   x"
		5:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                             /|        |\                                      x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                     /||        ||\                                     x"
			Escribir "x           ll  Taigre                                ll                                    /.||        ||.\   ..                               x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                    \.\|________|/./   \.\                              x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                    \.\|________|/./   \.\                              x"	
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                    \.\|________|/./   \.\                              x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                     \..|.\../..|./     \.\                             x"
			SiNo  
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                     \..|.\../..|./     \.\                             x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                      \|(*)><(*)|/\     /./                             x"
			Escribir "x                                                                                              \________/..\   /./                              x"
			Escribir "x                                                                                               /.__..__....\_/./                               x"
			Escribir "x                                                                                              /_/ /_/ /.___..\/                                x"
			Escribir "x                                                                                             /_/ /_/  \_/  \_/                                 x"
			Escribir "x                                                                                            ((( (((   ((   ((                                  x"
		6:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                              $        $                                       x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                        $      $                                        x"
			Escribir "x           ll  Dolarcium                             ll                                         $____$                                         x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                    ((   /(*)(*)  ))                                    x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                    ((   /(*)(*)  ))                                    x"
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                    ((   /(*)(*)  ))                                    x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                     \\ C   v  ) //                                     x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                     \\ C   v  ) //                                     x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                     ( \_\ -- /_/ )                                     x"
			Escribir "x                                                                                             \__(    )__/                                      x"
			Escribir "x                                                                                                _(  )_                                         x"
			Escribir "x                                                                                                //\/\\                                         x"
			Escribir "x                                                                                               //    \\                                        x"
			Escribir "x                                                                                               U      U                                        x"
	FinSegun
FinFuncion
// Funcion animacion del que recibe el ataque
Funcion animacion_victima (pikmin,hp_1,hp_2,ene_1,ene_2)
	segun pikmin Hacer
		1:
			Escribir "x                (\_    _/)                                                                                                                     x"
			Escribir "x             *   )\_  _/(    Pauuul! x_x                                                                                                       x"
			Escribir "x                 )X\_ /X(              *                                                                                                       x"
			Escribir "x      *           ) \/ (     *                                                                                                                 x"
			Escribir "x            *    //\ //\\                                                                  oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                // \\/  \\       *                                                         xx  bulpaul                               xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x        *      //  /\\   \\         *                                                      xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x          *    //  /\\   \\          *                                                     xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x      *        //  /\\   \\         *                                                      xx                      HP: " hp_1 "/100         xx        x"
				Finsi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x      *       //  // \\   \\       *                                                       xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x    *         //  // \\   \\        *                                                      xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x             ()   ¿   ¿   ()                                                               oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		2:
			Escribir "x                                                                                                                                               x"
			Escribir "x              ___  ___                                                                                                                         x"
			Escribir "x         *    \X \/ X \__     *   Glu! Gluuuuuu! x_x                                                                                           x"
			Escribir "x              (______) \/           *                                                                                                          x"
			Escribir "x    *         (| | |  ) \       *                                                          oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x             (         ) \                                                                 xx  Bajielim                              xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x       *     (         )  \_ /|      *                                                     xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x    *        (         )  \_ /|    *                                                       xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x   *         (         )  \_ /|    *                                                       xx                      HP: " hp_1 "/100         xx        x"	
				FinSi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x              (|_|_|_\)_____]=|                                                            xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x              (|_|_|_\)_____]=|                                                            xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x         *     \_____/  \/   \|          *                                                 oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		3:
			Escribir "x         ___                   ___                                                                                                             x"
			Escribir "x *      (__)\     /\ /\       /(__)      *                                                                                                     x"
			Escribir "x        (__) \___(X Y X)_____/ (__)  Maeeeeel! x_x                                                                                             x"
			Escribir "x        (__) _____ U U  ______ (__)                                                                                                            x"
			Escribir "x   *    (__)/     \    /      \(__)          *                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                   \@ /                                                                    xx  Samael                                xx        x"
			Si hp_1 >= 100 Entonces
				Escribir "x           *       //\\      *                                                             xx                      HP: " hp_1 "/100       xx        x"
			Sino si hp_1 >= 10 Entonces
					Escribir "x         *         //\\      *                                                             xx                      HP: " hp_1 "/100        xx        x"	
				SiNo
					Escribir "x            *      //\\     *                                                              xx                      HP: " hp_1 "/100         xx        x"	
				FinSi
			FinSi
			si ene_1 >= 10 Entonces
				Escribir "x                  //  \\                                                                   xx  ENERGIA: " ene_1 "/50                        xx        x"
			SiNo
				Escribir "x                  //  \\                                                                   xx  ENERGIA: " ene_1 "/50                         xx        x"
			FinSi
			Escribir "x        *         \\  //                                                                   oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                 _//  \\_        *                                                                                                             x"
		4:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                 *     Z   Z   Z                               x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                  Z   Z  Z        *                     x"
			Escribir "x           ll  TAhiti                                ll                                       *        Z   Z   Z                               x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                      *          Z____Z      *                          x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                    *            Z____Z        *                        x"	
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                 *               Z____Z    *                            x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                                 /_  _\                                 x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                                 /_  _\                                 x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                *               / X \X \                                x"
			Escribir "x                                                                                                      /    o   \       Tahiii! x_x             x"
			Escribir "x                                                                                                *    /          \                              x"
			Escribir "x                                                                                                    /____________\   *                         x"
			Escribir "x                                                                                                     ( (       ( (                             x"
			Escribir "x                                                                                           *         _)_)_     _)_)_       *                   x"
		5:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                     /|        |\         *                    x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                  *          /||        ||\                             x"
			Escribir "x           ll  Taigre                                ll                                            /.||        ||.\   ..                       x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                      *     \.\|________|/./   \.\       *              x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                                   *        \.\|________|/./   \.\        *             x"	
				SiNo
					Escribir "x           ll                      HP: " hp_2 "/100         ll                                    *       \.\|________|/./   \.\    *                 x"	
				FinSi 
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                             \..|.\../..|./     \.\                     x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                             \..|.\../..|./     \.\                     x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                              \|(X)><(X)|/\     /./                     x"
			Escribir "x                                                                                        *             \________/..\   /./      Taaaai! x_x     x"
			Escribir "x                                                                                                       /.__..__....\_/./                       x"
			Escribir "x                                                                                               *      /_/ /_/ /.___..\/     *            *     x"
			Escribir "x                                                                                                     /_/ /_/  \_/  \_/                         x"
			Escribir "x                                                                                           *        ((( (((   ((   ((           *              x"
		6:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                *     $        $                               x"
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                   *            $      $       *                        x"
			Escribir "x           ll  Dolarcium                             ll                                                 $____$                                 x"
			Si hp_2 >= 100 Entonces
				Escribir "x           ll                      HP: " hp_2 "/100       ll                                *           ((   /(X)(X)  ))        *                   x"
			Sino si hp_2 >= 10 Entonces
					Escribir "x           ll                      HP: " hp_2 "/100        ll                           *                ((   /(X)(X)  ))      *                     x"
				SiNo 
					Escribir "x           ll                      HP: " hp_2 "/100         ll                               *            ((   /(X)(X)  ))      *                     x"	
				FinSi
			FinSi
			si ene_2 >= 10 Entonces
				Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                             \\ C   v  ) //                             x"
			SiNo
				Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                             \\ C   v  ) //                             x"
			FinSi
			Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                   *         ( \_\ -- /_/ )                             x"
			Escribir "x                                                                                                     \__(    )__/     DAÑO RECIBIDO BIP BIP!   x"
			Escribir "x                                                                                                        _(  )_     *                           x"
			Escribir "x                                                                                               *        //\/\\              *                  x"
			Escribir "x                                                                                                       //    \\                                x"
			Escribir "x                                                                                       *               U      U     *                          x"
	FinSegun
FinFuncion
// Funcion dialogo final
Funcion final_dialogo (resultado,nom_enemigo,nom_pikmin)
	Dimension aliado[10],enemi[10]
	palabra_con_espacios(nom_pikmin,10,aliado)
	palabra_con_espacios(nom_enemigo,10,enemi)
	segun resultado Hacer
		0:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El Combate contra " Sin Saltar
			Para b=1 Hasta 10 Con Paso 1 Hacer 
				Escribir enemi[b] Sin Saltar
			FinPara
			Escribir "                                                                                                          xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Ha finalizado                                                                                                                         xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		1:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Los puntos de salud de " Sin Saltar
			Para b=1 Hasta 10 Con Paso 1 Hacer 
				Escribir aliado[b] Sin Saltar
			FinPara
			Escribir "                                                                                                     xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Han llegado a 0, Quedo fuera de combate                                                                                               xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	FinSegun
FinFuncion
// Funcion final del combate
Funcion final (pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,resultado)
	segun resultado Hacer
		0:
			Borrar Pantalla
			Segun enemigo Hacer
				4:
					Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
					Escribir "x                                                                                                                                               x"
					Escribir "x                                                                                                     Z   Z   Z                                 x"
					Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                Z   Z  Z                                x"
					Escribir "x           ll  TAhiti                                ll                                              Z   Z   Z                                 x"
					Escribir "x           ll                      HP: 0 /100        ll                                               Z____Z                                   x"
					si ene_2 >= 10 Entonces
						Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                               /_  _\                                   x"
					SiNo
						Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                               /_  _\                                   x"
					FinSi
					Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                              / x \x \                                  x"
					Escribir "x                                                                                                    /    o   \                                 x"
					Escribir "x                                                                                                   /          \                                x"
					Escribir "x                                                                                                  /____________\                               x"
					Escribir "x                                                                                                   ( (       ( (                               x"
					Escribir "x                                                                                                   _)_)_     _)_)_                             x"
				5:
					Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
					Escribir "x                                                                                                                                               x"
					Escribir "x                                                                                                   /|        |\                                x"
					Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                           /||        ||\                               x"
					Escribir "x           ll  Taigre                                ll                                          /.||        ||.\   ..                         x"
					Escribir "x           ll                      HP: 0 /100        ll                                          \.\|________|/./   \.\                        x"
					si ene_2 >= 10 Entonces
						Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                           \..|.\../..|./     \.\                       x"
					SiNo
						Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                           \..|.\../..|./     \.\                       x"
					FinSi
					Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                            \|(x)><(x)|/\     /./                       x"
					Escribir "x                                                                                                    \________/..\   /./                        x"
					Escribir "x                                                                                                     /.__..__....\_/./                         x"
					Escribir "x                                                                                                    /_/ /_/ /.___..\/                          x"
					Escribir "x                                                                                                   /_/ /_/  \_/  \_/                           x"
					Escribir "x                                                                                                  ((( (((   ((   ((                            x"
				6:
					Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
					Escribir "x                                                                                                                                               x"
					Escribir "x                                                                                                    $        $                                 x"
					Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                              $      $                                  x"
					Escribir "x           ll  Dolarcium                             ll                                               $____$                                   x"
					Escribir "x           ll                      HP: 0 /100        ll                                          ((   /(x)(x)  ))                              x"
					si ene_2 >= 10 Entonces
						Escribir "x           ll  ENERGIA: " ene_2 "/50                        ll                                           \\ C   v  ) //                               x"
					SiNo
						Escribir "x           ll  ENERGIA: " ene_2 "/50                         ll                                           \\ C   v  ) //                               x"
					FinSi
					Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                           ( \_\ -- /_/ )                               x"
					Escribir "x                                                                                                   \__(    )__/                                x"
					Escribir "x                                                                                                      _(  )_                                   x"
					Escribir "x                                                                                                      //\/\\                                   x"
					Escribir "x                                                                                                     //    \\                                  x"
					Escribir "x                                                                                                     U      U                                  x"	
			FinSegun
			interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
		1:
			Borrar Pantalla
			interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
			Segun pikmin Hacer
				1:
					Escribir "x                  (\_    _/)                                                                                                                   x"
					Escribir "x                   )\_  _/(                                                                                                                    x"
					Escribir "x                   )x\_ /x(                                                                                                                    x"
					Escribir "x                    ) \/ (                                                                                                                     x"
					Escribir "x                   //\ //\\                                                                oooooooooooooooooooooooooooooooooooooooooooo        x"
					Escribir "x                  // \\/  \\                                                               xx  bulpaul                               xx        x"
					Escribir "x                 //  /\\   \\                                                              xx                      HP: 0 /100        xx        x"
					si ene_1 >= 10 Entonces
						Escribir "x                //  // \\   \\                                                             xx  ENERGIA: " ene_1 "/50                        xx        x"
					SiNo
						Escribir "x                //  // \\   \\                                                             xx  ENERGIA: " ene_1 "/50                         xx        x"
					FinSi
					Escribir "x               ()   ¿   ¿   ()                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
					Escribir "x                                                                                                                                               x"
				2:
					Escribir "x                                                                                                                                               x"
					Escribir "x                ___  ___                                                                                                                       x"
					Escribir "x                \x \/ x \__                                                                                                                    x"
					Escribir "x                (______) \/                                                                                                                    x"
					Escribir "x                (| | |  ) \                                                                oooooooooooooooooooooooooooooooooooooooooooo        x"
					Escribir "x               (         ) \                                                               xx  Bajielim                              xx        x"
					Escribir "x               (         )  \_ /|                                                          xx                      HP: 0 /100        xx        x"
					si ene_1 >= 10 Entonces
						Escribir "x                (|_|_|_\)_____]=|                                                          xx  ENERGIA: " ene_1 "/50                        xx        x"
					SiNo
						Escribir "x                (|_|_|_\)_____]=|                                                          xx  ENERGIA: " ene_1 "/50                         xx        x"
					FinSi
					Escribir "x                 \_____/  \/   \|                                                          oooooooooooooooooooooooooooooooooooooooooooo        x"
					Escribir "x                                                                                                                                               x"
				3:
					Escribir "x           ___                   ___                                                                                                           x"
					Escribir "x          (__)\     /\ /\       /(__)                                                                                                          x"
					Escribir "x          (__) \___(x Y x)_____/ (__)                                                                                                          x"
					Escribir "x          (__) _____ U U  ______ (__)                                                                                                          x"
					Escribir "x          (__)/     \    /      \(__)                                                      oooooooooooooooooooooooooooooooooooooooooooo        x"
					Escribir "x                     \@ /                                                                  xx  Samael                                xx        x"
					Escribir "x                     //\\                                                                  xx                      HP: 0 /100        xx        x"
					si ene_1 >= 10 Entonces
						Escribir "x                    //  \\                                                                 xx  ENERGIA: " ene_1 "/50                        xx        x"
					SiNo
						Escribir "x                    //  \\                                                                 xx  ENERGIA: " ene_1 "/50                         xx        x"
					FinSi
					Escribir "x                    \\  //                                                                 oooooooooooooooooooooooooooooooooooooooooooo        x"
					Escribir "x                   _//  \\_                                                                                                                    x"
			FinSegun
	FinSegun
FinFuncion
// Funcion ataque enemigo 
Funcion calculo_enemigo(elemento,pikmin,enemigo,atq,esp_atq,hp_1 Por Referencia,def,esp_def,habilidades_name,dmg,elemento_habilidad,precision_habilidad,hp_2,ene_1,ene_2,variable_IA)
	// Habilidades de los enemigos
	Dimension eficasia_vector[8], backup_dano[8]
	contador = 0
	para a = 5 Hasta 8 Con Paso 1 Hacer
		backup_dano[a] = dmg[a]
	FinPara
	para a = 5 Hasta 8 Con Paso 1 Hacer
		eficasia_vector[a] = valor_de_ataque_aliado(backup_dano[a],elemento_habilidad[a],elemento,variable_IA[a])
	FinPara
	para a = 5 Hasta 8 Con Paso 1 Hacer
		Escribir variable_IA[a]
	FinPara
	para a = 1 Hasta 8 Con Paso 1 Hacer
		contador = contador + 1
		si variable_IA[a] == Verdadero Entonces
			habilidad_usada = a
			contador = contador - 1
		FinSi
		si contador == 8 Entonces
			habilidad_usada = Aleatorio(5,8)
		FinSi
	FinPara
	categoria = dano(atq,esp_atq,backup_dano[habilidad_usada])
	interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia_vector[habilidad_usada],0)
	critico(backup_dano[habilidad_usada],enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
	arreglo_de_defensa(backup_dano[habilidad_usada],def,esp_def,categoria)
	hp_1 = redon(hp_1 - backup_dano[habilidad_usada])
FinFuncion
// Funcion del sistema de combate
Funcion combate(enemigo,pikmin,pikmin_2,hp_1,hp_2,hp_3,ene_1,ene_2,nom_enemigo,nom_pikmin,nom_pikmin2,consumibles,nom_consumibles,tipo_interfaz)
	Dimension esp_atq[6],atq[6],def[6],esp_def[6],rapidez[6],elemento[6]
	Dimension dmg[8],habilidades_name[8],elemento_habilidad[8],precision_habilidad[8],objetivo[4]
	Dimension uso[5],tipo_consumible[25]
	// Tipos elementales:
	// 	Planta 	= 1
	//	Fuego 	= 2	
	//	Agua 	= 3
	//	Lucha 	= 4
	//	Acero 	= 5
	//	Normal 	= 6
	// Estadisticas:
	esp_atq[1]= 5; atq[1]= 	5; def[1]= 	5; esp_def[1]= 	5; rapidez[1]= 5; elemento[1] = 1 // Bulpaul
	esp_atq[2]= 5; atq[2]= 	5; def[2]= 	5; esp_def[2]= 	5; rapidez[2]= 5; elemento[2] = 3 // Bajielim 
	esp_atq[3]= 5; atq[3]= 	5; def[3]= 	5; esp_def[3]= 	5; rapidez[3]= 5; elemento[3] = 4 // Samael
	esp_atq[4]= 5; atq[4]= 	5; def[4]= 	5; esp_def[4]= 	5; rapidez[4]= 8; elemento[4] = 2 // TAhiti
	esp_atq[5]= 5; atq[5]= 	5; def[5]= 	5; esp_def[5]= 	5; rapidez[5]= 4; elemento[5] = 6 // Taigre
	esp_atq[6]= 5; atq[6]= 	5; def[6]= 	5; esp_def[6]= 	5; rapidez[6]= 4; elemento[6] = 5 // Dolarcium
	num_ref = 15
	tiempo_entre_animaciones = 2
	Dimension habilidad_mia_1[num_ref],habilidad_mia_2[num_ref],habilidad_mia_3[num_ref],habilidad_mia_4[num_ref]
	Dimension habilidad_enemiga_1[num_ref],habilidad_enemiga_2[num_ref],habilidad_enemiga_3[num_ref],habilidad_enemiga_4[num_ref]
	// Consumibles enemigos
	Dimension consumibles_enemigo[3],nom_consumibles_enemigo[3]
	nom_consumibles_enemigo[1] = "Pocion de vida chica"
	consumibles_enemigo[1] = 2
	nom_consumibles_enemigo[2] = "Pocion de vida mediana"
	consumibles_enemigo[2] = 1
	nom_consumibles_enemigo[3] = "Pocion de energia grande"
	consumibles_enemigo[3] = 2
	// Cosas de la IA
	Dimension variable_IA[8]
	uso_enemigo = falso 
	para a = 1 Hasta 8 Con Paso 1 Hacer
		variable_IA[a] = Falso
	FinPara
	
	// Habilidades de mis pikmins
	segun pikmin hacer
		1:
			// Habilidades Bulpaul:
			habilidades_name[1] = "Latigo cepa"
			palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
			dmg[1] = 10
			elemento_habilidad[1] = 1
			precision_habilidad[1] = 8
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[1] = 0
			
			habilidades_name[2] = "Mordisco"
			palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_2)
			dmg[2] = 1
			elemento_habilidad[2] = 1
			precision_habilidad[2] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[2] = 0
			
			habilidades_name[3] = "Tortazo"
			palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_3)
			dmg[3] = 1
			elemento_habilidad[3] = 1
			precision_habilidad[3] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[3] = 0
			
			habilidades_name[4] = "Absorber"
			palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_4)
			dmg[4] = 1
			elemento_habilidad[4] = 1
			precision_habilidad[4] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[4] = 0
		2:
			// Habilidades Bajielim:
			habilidades_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
			dmg[1] = 1
			elemento_habilidad[1] = 1
			precision_habilidad[1] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[1] = 0
			
			habilidades_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
			dmg[2] = 1
			elemento_habilidad[2] = 1
			precision_habilidad[2] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[2] = 0
			
			habilidades_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
			dmg[3] = 1
			elemento_habilidad[3] = 1
			precision_habilidad[3] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[3] = 0
			
			habilidades_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
			dmg[4] = 1
			elemento_habilidad[4] = 1
			precision_habilidad[4] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[4] = 0
		3:
			// Habilidades Samael:
			habilidades_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
			dmg[1] = 1
			elemento_habilidad[1] = 1
			precision_habilidad[1] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[1] = 0
			
			habilidades_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
			dmg[2] = 1
			elemento_habilidad[2] = 1
			precision_habilidad[2] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[2] = 0
			
			habilidades_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
			dmg[3] = 1
			elemento_habilidad[3] = 1
			precision_habilidad[3] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[3] = 0
			
			habilidades_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
			dmg[4] = 1
			elemento_habilidad[4] = 1
			precision_habilidad[4] = 10
			// objetivo 0 = Enemigo / objetivo 1 = Uno mismo
			objetivo[4] = 0
	FinSegun
	segun enemigo hacer
		4:
			// Habilidades TAhiti:
			habilidades_name[5] = "habilidad 2"
			palabra_con_espacios(habilidades_name[5],num_ref,habilidad_enemiga_1)
			dmg[5] = 10
			elemento_habilidad[5] = 2
			precision_habilidad[5] = 10
			
			habilidades_name[6] = "habilidad 3"
			palabra_con_espacios(habilidades_name[6],num_ref,habilidad_enemiga_2)
			dmg[6] = 10
			elemento_habilidad[6] = 2
			precision_habilidad[6] = 10
			
			habilidades_name[7] = "habilidad 3"
			palabra_con_espacios(habilidades_name[7],num_ref,habilidad_enemiga_3)
			dmg[7] = 10
			elemento_habilidad[7] = 2
			precision_habilidad[7] = 10
			
			habilidades_name[8] = "habilidad 4"
			palabra_con_espacios(habilidades_name[8],num_ref,habilidad_enemiga_4)
			dmg[8] = 10
			elemento_habilidad[8] = 2
			precision_habilidad[8] = 10
		5:
			// Habilidades Taigre:
			habilidades_name[5] = "habilidad 2"
			palabra_con_espacios(habilidades_name[5],num_ref,habilidad_enemiga_1)
			dmg[5] = 10
			elemento_habilidad[5] = 4
			precision_habilidad[5] = 10
			
			habilidades_name[6] = "habilidad 3"
			palabra_con_espacios(habilidades_name[6],num_ref,habilidad_enemiga_2)
			dmg[6] = 10
			elemento_habilidad[6] = 1
			precision_habilidad[6] = 10
			
			habilidades_name[7] = "habilidad 3"
			palabra_con_espacios(habilidades_name[7],num_ref,habilidad_enemiga_3)
			dmg[7] = 10
			elemento_habilidad[7] = 1
			precision_habilidad[7] = 10
			
			habilidades_name[8] = "habilidad 4"
			palabra_con_espacios(habilidades_name[8],num_ref,habilidad_enemiga_4)
			dmg[8] = 10
			elemento_habilidad[8] = 1
			precision_habilidad[8] = 10
		6:
			// Habilidades Dolarcium:
			habilidades_name[5] = "habilidad 2"
			palabra_con_espacios(habilidades_name[5],num_ref,habilidad_enemiga_1)
			dmg[5] = 10
			elemento_habilidad[5] = 1
			precision_habilidad[5] = 10
			
			habilidades_name[6] = "habilidad 3"
			palabra_con_espacios(habilidades_name[6],num_ref,habilidad_enemiga_2)
			dmg[6] = 10
			elemento_habilidad[6] = 1
			precision_habilidad[6] = 10
			
			habilidades_name[7] = "habilidad 3"
			palabra_con_espacios(habilidades_name[7],num_ref,habilidad_enemiga_3)
			dmg[7] = 10
			elemento_habilidad[7] = 1
			precision_habilidad[7] = 10
			
			habilidades_name[8] = "habilidad 4"
			palabra_con_espacios(habilidades_name[8],num_ref,habilidad_enemiga_4)
			dmg[8] = 10
			elemento_habilidad[8] = 1
			precision_habilidad[8] = 10
	FinSegun
	Repetir
		para a = 1 Hasta 2 Con Paso 1 Hacer
			// turno = 1 (turno mio) turno = 0 (turno enemigo)
			si turno == 3 Entonces
				turno = 1
			SiNo
				Segun a Hacer
					1:
						Si rapidez[pikmin] == rapidez[enemigo] Entonces
							turno = Aleatorio(0,1)
						Sino si rapidez[pikmin] < rapidez[enemigo]
								turno = 0 
							SiNo
								turno = 1
							Fin si
						FinSi
					2:
						si turno == 1 Entonces
							turno = 0
						SiNo
							turno = 1
						FinSi
				FinSegun
			FinSi
			Segun turno Hacer
				// TURNO ENEMIGO
				0:
					si hp_2 >= 1 Entonces
						Borrar Pantalla
						interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
						interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx       Es el turno del enemigo                                                                                                               xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 1 Segundos
						ia_probabilidad = Aleatorio(1,10)
						si hp_2 <= 30 y uso_enemigo == falso Entonces
							si consumibles_enemigo[2] > 0 Entonces
								hp_2 = hp_2 + 60
								consumibles_enemigo[2] = consumibles_enemigo[2] - 1
								uso_enemigo = Verdadero
							sino si consumibles_enemigo[1] > 0 Entonces
									hp_2 = hp_2 + 30
									consumibles_enemigo[1] = consumibles_enemigo[1] - 1
									uso_enemigo = Verdadero
								FinSi
							FinSi
						FinSi
						si ene_2 <= 10 y uso_enemigo == falso Entonces
							si consumibles_enemigo[3] > 0 Entonces
								ene_2 = ene_2 + 30
								consumibles_enemigo[3] = consumibles_enemigo[3] - 1
								uso_enemigo = Verdadero
							FinSi
						FinSi
						si hp_2 <= 50 y uso_enemigo == falso Entonces
							si ia_probabilidad >= 1 y ia_probabilidad <= 3 Entonces
								si consumibles_enemigo[1] > 0 Entonces
									hp_2 = hp_2 + 30
									consumibles_enemigo[1] = consumibles_enemigo[1] - 1
									uso_enemigo = Verdadero
								FinSi	
							FinSi
							si ia_probabilidad >= 4 y ia_probabilidad <= 10 y uso_enemigo = falso Entonces
								calculo_enemigo(elemento[pikmin],pikmin,enemigo,atq[enemigo],esp_atq[enemigo],hp_1,def[pikmin],esp_def[pikmin],habilidades_name,dmg,elemento_habilidad,precision_habilidad,hp_2,ene_1,ene_2,variable_IA)
								uso_enemigo = Verdadero
							FinSi
						SiNo
							calculo_enemigo(elemento[pikmin],pikmin,enemigo,atq[enemigo],esp_atq[enemigo],hp_1,def[pikmin],esp_def[pikmin],habilidades_name,dmg,elemento_habilidad,precision_habilidad,hp_2,ene_1,ene_2,variable_IA)
							uso_enemigo = Verdadero
						FinSi
						espera(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
					FinSi
					
				// TU TURNO	
				1:
					si hp_1 <= 0 y (pikmin == 1 o pikmin == 2 o pikmin == 3) Entonces
						Borrar Pantalla
						final(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,1)
						final_dialogo(1,nom_enemigo,nom_pikmin)
						Esperar 2 Segundos
						Borrar Pantalla
						aux = hp_3
						hp_3 = hp_1
						hp_1 = aux
						aux = pikmin_2
						pikmin_2 = pikmin
						pikmin = aux
						aux_char = nom_pikmin2
						nom_pikmin2 = nom_pikmin
						nom_pikmin = aux_char
						cambio_pikmin(pikmin,enemigo,nom_pikmin,hp_1,hp_2,ene_1,ene_2)
						segun pikmin hacer
							1:
								// Habilidades Bulpaul:
								habilidades_name[1] = "Latigo cepa"
								palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
								dmg[1] = 10
								elemento_habilidad[1] = 1
								precision_habilidad[1] = 8
								
								habilidades_name[2] = "Mordisco"
								palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
								dmg[2] = 1
								elemento_habilidad[2] = 1
								precision_habilidad[2] = 10
								
								habilidades_name[3] = "Tortazo"
								palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
								dmg[3] = 1
								elemento_habilidad[3] = 1
								precision_habilidad[3] = 10
								
								habilidades_name[4] = "Absorber"
								palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
								dmg[4] = 1
								elemento_habilidad[4] = 1
								precision_habilidad[4] = 10
							2:
								// Habilidades Bajielim:
								habilidades_name[1] = "habilidad 1"
								palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
								dmg[1] = 1
								elemento_habilidad[1] = 1
								precision_habilidad[1] = 10
								
								habilidades_name[2] = "habilidad 2"
								palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
								dmg[2] = 1
								elemento_habilidad[2] = 1
								precision_habilidad[2] = 10
								
								habilidades_name[3] = "habilidad 3"
								palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
								dmg[3] = 1
								elemento_habilidad[3] = 1
								precision_habilidad[3] = 10
								
								habilidades_name[4] = "habilidad 4"
								palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
								dmg[4] = 1
								elemento_habilidad[4] = 1
								precision_habilidad[4] = 10
							3:
								// Habilidades Samael:
								habilidades_name[1] = "habilidad 1"
								palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
								dmg[1] = 1
								elemento_habilidad[1] = 1
								precision_habilidad[1] = 10
								
								habilidades_name[2] = "habilidad 2"
								palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
								dmg[2] = 1
								elemento_habilidad[2] = 1
								precision_habilidad[2] = 10
								
								habilidades_name[3] = "habilidad 3"
								palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
								dmg[3] = 1
								elemento_habilidad[3] = 1
								precision_habilidad[3] = 10
								
								habilidades_name[4] = "habilidad 4"
								palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
								dmg[4] = 1
								elemento_habilidad[4] = 1
								precision_habilidad[4] = 10
						FinSegun
					FinSi
					si comprobacion == 0 Entonces
						Borrar Pantalla
						interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
						interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx       Tu turno                                                                                                                              xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "xx                                                                                                                                             xx"
						Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
						Esperar 1 Segundos
					FinSi
					comprobacion = 0
					Borrar Pantalla
					accion = interfaz_principal(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,nom_pikmin,tipo_interfaz)
					segun accion Hacer
						1:  // Lucha
							Borrar Pantalla
							interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
							interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
							segun turno Hacer
								1:
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									Escribir "xx                                                                             xx                                                              xx"
									Escribir "xx                                                                             xx        1." Sin Saltar
									Para b = 1 hasta num_ref Con Paso 1 Hacer
										Escribir habilidad_mia_1[b] Sin Saltar
									FinPara
									Escribir "          2." Sin Saltar
									Para b = 1 hasta num_ref Con Paso 1 Hacer
										Escribir habilidad_mia_2[b] Sin Saltar
									FinPara 
									escribir "          xx"
									Escribir "xx       Cual habilidad queres lanzar?                                         xx                                                              xx"
									Escribir "xx                                                                             xx        3." Sin Saltar
									Para b = 1 hasta num_ref Con Paso 1 Hacer
										Escribir habilidad_mia_3[b] Sin Saltar
									FinPara 
									escribir "          4." Sin Saltar
									Para b = 1 hasta num_ref Con Paso 1 Hacer
										Escribir habilidad_mia_4[b] Sin Saltar
									FinPara
									escribir "          xx"
									Escribir "xx       0. Atras                                                              xx                                                              xx"
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									leer ataque
									segun ataque Hacer
										0:
											a = a - 1
											turno = 3
											comprobacion = 1
										1,2,3,4:
											evasion = precision(precision_habilidad[ataque])
											si evasion == 1 Entonces
												Segun ataque Hacer
													1:
														valor_dano = dmg[ataque]
														hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														Borrar Pantalla
														animacion_victima(enemigo,hp_1,hp_2,ene_1,ene_2)
														animacion_atacante(pikmin,hp_1,hp_2,ene_1,ene_2)
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx       El golpe ha impactado                                                                                                                 xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],valor_dano)
														eficasia = valor_de_ataque_aliado(valor_dano,elemento_habilidad[ataque],elemento[enemigo],variable_IA)
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia,1)
														critico(valor_dano,enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(valor_dano,def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - valor_dano)
													2:
														valor_dano = dmg[ataque]
														hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														Borrar Pantalla
														animacion_victima(enemigo,hp_1,hp_2,ene_1,ene_2)
														animacion_atacante(pikmin,hp_1,hp_2,ene_1,ene_2)
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx       El golpe ha impactado                                                                                                                 xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],valor_dano)
														eficasia = valor_de_ataque_aliado(valor_dano,elemento_habilidad[ataque],elemento[enemigo],variable_IA)
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia,1)
														critico(valor_dano,enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(valor_dano,def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - valor_dano)
													3:
														valor_dano = dmg[ataque]
														hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														Borrar Pantalla
														animacion_victima(enemigo,hp_1,hp_2,ene_1,ene_2)
														animacion_atacante(pikmin,hp_1,hp_2,ene_1,ene_2)
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx       El golpe ha impactado                                                                                                                 xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],valor_dano)
														eficasia = valor_de_ataque_aliado(valor_dano,elemento_habilidad[ataque],elemento[enemigo],variable_IA)
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia,1)
														critico(valor_dano,enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(valor_dano,def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - valor_dano)
													4:
														valor_dano = dmg[ataque]
														hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														Borrar Pantalla
														animacion_victima(enemigo,hp_1,hp_2,ene_1,ene_2)
														animacion_atacante(pikmin,hp_1,hp_2,ene_1,ene_2)
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx       El golpe ha impactado                                                                                                                 xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "xx                                                                                                                                             xx"
														Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],valor_dano)
														eficasia = valor_de_ataque_aliado(valor_dano,elemento_habilidad[ataque],elemento[enemigo],variable_IA)
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia,1)
														critico(valor_dano,enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(valor_dano,def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - valor_dano)
												FinSegun
											SiNo si evasion == 0 Entonces
													segun ataque Hacer
														1:
															hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														2:
															hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														3:
															hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
														4:
															hab_usada(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,habilidades_name[ataque])
													FinSegun
													Esperar 2 Segundos
													Borrar Pantalla
													interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
													animacion_atacante(pikmin,hp_1,hp_2,ene_1,ene_2)
													segun pikmin Hacer
														1:
															Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx       Bulpaul ha fallado el ataque                                                                                                          xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														2:
															Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx       Bajielim ha fallado el ataque                                                                                                         xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														3:
															Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx       Samael ha fallado el ataque                                                                                                           xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "xx                                                                                                                                             xx"
															Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
													FinSegun
													Esperar 2 Segundos
												FinSi
											finsi
										De Otro Modo:
											Borrar Pantalla
											anti_mike(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2)
											a = a - 1
											turno = 3
											comprobacion = 1
									FinSegun
							FinSegun
						2:// MOCHILA
							objeto = mochila(consumibles)
							si objeto > 0 y objeto <= 5 Entonces
								palabra_con_espacios(nom_consumibles[objeto],25,tipo_consumible)
								Para b = 1 Hasta 5 Con Paso 1 Hacer
									uso[b] = Falso
								FinPara
								Segun objeto Hacer
									1:// Pocion de vida chica
										si consumibles[objeto] >= 1 Entonces
											si hp_1 == 100 Entonces
												Borrar Pantalla
												interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
												interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx       Tu vida esta completa, no puede curarse mas                                                                                           xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												a = a - 1
												turno = 3
												comprobacion = 1
												Esperar 2 Segundos
											sino si hp_1 > 70 Entonces
													hp_1 = 100
													consumibles[objeto] = consumibles[objeto] - 1
													uso[objeto] = Verdadero
												sino si hp_1 <= 70
														hp_1 = hp_1 + 30	
														consumibles[objeto] = consumibles[objeto] - 1
														uso[objeto] = Verdadero
													FinSi
												FinSi
											FinSi
										SiNo
											Borrar Pantalla
											interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
											interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx       No tienes este objeto                                                                                                                 xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											a = a - 1
											turno = 3
											comprobacion = 1
											Esperar 2 Segundos
										FinSi
									2:// Pocion de vida mediana
										si consumibles[objeto] >= 1 Entonces
											si hp_1 == 100 Entonces
												Borrar Pantalla
												interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
												interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx       Tu vida esta completa, no puede curarse mas                                                                                           xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												a = a - 1
												turno = 3
												comprobacion = 1
												Esperar 2 Segundos
											sino si hp_1 > 40 Entonces
													hp_1 = 100
													consumibles[objeto] = consumibles[objeto] - 1
													uso[objeto] = Verdadero
												sino si hp_1 <= 40
														hp_1 = hp_1 + 60	
														consumibles[objeto] = consumibles[objeto] - 1
														uso[objeto] = Verdadero
													FinSi
												FinSi
											FinSi
										SiNo
											Borrar Pantalla
											interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
											interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx       No tienes este objeto                                                                                                                 xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											a = a - 1
											turno = 3
											comprobacion = 1
											Esperar 2 Segundos
										FinSi
									3:// Pocion de vida grande
										si consumibles[objeto] >= 1 Entonces
											si hp_1 == 100 Entonces
												Borrar Pantalla
												interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
												interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx       Tu vida esta completa, no puede curarse mas                                                                                           xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												a = a - 1
												turno = 3
												comprobacion = 1
												Esperar 2 Segundos
											sino 
												hp_1 = 100
												consumibles[objeto] = consumibles[objeto] - 1
												uso[objeto] = Verdadero
											FinSi
										SiNo
											Borrar Pantalla
											interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
											interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx       No tienes este objeto                                                                                                                 xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											a = a - 1
											turno = 3
											comprobacion = 1
											Esperar 2 Segundos
										FinSi
									4:// Pocion de energia chica
										si consumibles[objeto] >= 1 Entonces
											si ene_1 == 50 Entonces
												Borrar Pantalla
												interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
												interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx       Tu energia ya esta llena                                                                                                              xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												a = a - 1
												turno = 3
												comprobacion = 1
												Esperar 2 Segundos
											sino si ene_1 >= 35 Entonces
													ene_1 = 50
													consumibles[objeto] = consumibles[objeto] - 1
													uso[objeto] = Verdadero
												sino si ene_1 <= 35
														ene_1 = ene_1 + 15	
														consumibles[objeto] = consumibles[objeto] - 1
														uso[objeto] = Verdadero
													FinSi
												FinSi
											FinSi
										SiNo
											Borrar Pantalla
											interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
											interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx       No tienes este objeto                                                                                                                 xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											a = a - 1
											turno = 3
											comprobacion = 1
											Esperar 2 Segundos
										FinSi
									5:// Pocion de energia grande
										si consumibles[objeto] >= 1 Entonces
											si ene_1 == 50 Entonces
												Borrar Pantalla
												interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
												interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx       Tu energia ya esta llena                                                                                                              xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "xx                                                                                                                                             xx"
												Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
												a = a - 1
												turno = 3
												comprobacion = 1
												Esperar 2 Segundos
											sino si ene_1 >= 20 Entonces
													ene_1 = 50
													consumibles[objeto] = consumibles[objeto] - 1
													uso[objeto] = Verdadero
												sino si ene_1 <= 20
														ene_1 = ene_1 + 30	
														consumibles[objeto] = consumibles[objeto] - 1
														uso[objeto] = Verdadero
													FinSi
												FinSi
											FinSi
										SiNo
											Borrar Pantalla
											interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
											interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx       No tienes este objeto                                                                                                                 xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											a = a - 1
											turno = 3
											comprobacion = 1
											Esperar 2 Segundos
										FinSi
								FinSegun
								si uso[objeto] == Verdadero Entonces
									Borrar Pantalla
									interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
									interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx       Has usado " Sin Saltar
									para b = 1 Hasta 25 Con Paso 1 Hacer
										escribir tipo_consumible[b] Sin Saltar
									FinPara
									Escribir "                                                                                                   xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									Esperar 2 Segundos
								FinSi
							SiNo si objeto == 0 entonces 
									a = a - 1
									turno = 3
									comprobacion = 1
								SiNo
								Borrar Pantalla
								interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
								interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
								Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
								Escribir "xx                                                                                                                                             xx"
								Escribir "xx                                                                                                                                             xx"
								Escribir "xx       Mike esa opcion no existe...                                                                                                          xx"
								Escribir "xx                                                                                                                                             xx"
								Escribir "xx                                                                                                                                             xx"
								Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
								Esperar 2 Segundos
								a = a - 1
								turno = 3
								comprobacion = 1
							FinSi
							
						FinSi
						
						3:// info
							detalles_habilidades(pikmin,nom_pikmin,elemento[pikmin],esp_atq[pikmin],atq[pikmin],def[pikmin],esp_def[pikmin],rapidez[pikmin],habilidades_name,dmg,elemento_habilidad,precision_habilidad,objetivo)
							Esperar tecla
							a = a - 1
							turno = 3
							comprobacion = 1
						4:// cambiar pikmin
							si tipo_interfaz == 1 Entonces
								a = a - 1
								turno = 3
								comprobacion = 1
							SiNo
								Borrar Pantalla
								interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
								interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
								Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
								Escribir "xx                                                                                                                                             xx"
								Escribir "xx       Seguro quiere cambiar de pikmin?                                                                                                      xx"
								Escribir "xx                                                                                                                                             xx"
								Escribir "xx       Si, quiero = 1 / No, volver atras = 0                                                                                                 xx"
								Escribir "xx                                                                                                                                             xx"
								Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
								leer aviso
								si hp_3 >= 1 Entonces
									segun aviso Hacer
										1:
											aux = hp_3
											hp_3 = hp_1
											hp_1 = aux
											aux = pikmin_2
											pikmin_2 = pikmin
											pikmin = aux
											aux_char = nom_pikmin2
											nom_pikmin2 = nom_pikmin
											nom_pikmin = aux_char
											cambio_pikmin(pikmin,enemigo,nom_pikmin,hp_1,hp_2,ene_1,ene_2)
											segun pikmin hacer
												1:
													// Habilidades Bulpaul:
													habilidades_name[1] = "Latigo cepa"
													palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
													dmg[1] = 10
													elemento_habilidad[1] = 1
													precision_habilidad[1] = 8
													
													habilidades_name[2] = "Mordisco"
													palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
													dmg[2] = 1
													elemento_habilidad[2] = 1
													precision_habilidad[2] = 10
													
													habilidades_name[3] = "Tortazo"
													palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
													dmg[3] = 1
													elemento_habilidad[3] = 1
													precision_habilidad[3] = 10
													
													habilidades_name[4] = "Absorber"
													palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
													dmg[4] = 1
													elemento_habilidad[4] = 1
													precision_habilidad[4] = 10
												2:
													// Habilidades Bajielim:
													habilidades_name[1] = "habilidad 1"
													palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
													dmg[1] = 1
													elemento_habilidad[1] = 1
													precision_habilidad[1] = 10
													
													habilidades_name[2] = "habilidad 2"
													palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
													dmg[2] = 1
													elemento_habilidad[2] = 1
													precision_habilidad[2] = 10
													
													habilidades_name[3] = "habilidad 3"
													palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
													dmg[3] = 1
													elemento_habilidad[3] = 1
													precision_habilidad[3] = 10
													
													habilidades_name[4] = "habilidad 4"
													palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
													dmg[4] = 1
													elemento_habilidad[4] = 1
													precision_habilidad[4] = 10
												3:
													// Habilidades Samael:
													habilidades_name[1] = "habilidad 1"
													palabra_con_espacios(habilidades_name[1],num_ref,habilidad_mia_1)
													dmg[1] = 1
													elemento_habilidad[1] = 1
													precision_habilidad[1] = 10
													
													habilidades_name[2] = "habilidad 2"
													palabra_con_espacios(habilidades_name[2],num_ref,habilidad_mia_1)
													dmg[2] = 1
													elemento_habilidad[2] = 1
													precision_habilidad[2] = 10
													
													habilidades_name[3] = "habilidad 3"
													palabra_con_espacios(habilidades_name[3],num_ref,habilidad_mia_1)
													dmg[3] = 1
													elemento_habilidad[3] = 1
													precision_habilidad[3] = 10
													
													habilidades_name[4] = "habilidad 4"
													palabra_con_espacios(habilidades_name[4],num_ref,habilidad_mia_1)
													dmg[4] = 1
													elemento_habilidad[4] = 1
													precision_habilidad[4] = 10
											FinSegun
										De Otro Modo:
											anti_mike(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2)
											a = a - 1
											turno = 3
											comprobacion = 1
									FinSegun
								SiNo
									Borrar Pantalla
									interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
									interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx       El pokemon al que quiere cambiar esta debilitado                                                                                      xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									Esperar 2 Segundos
									a = a - 1
									turno = 3
									comprobacion = 1
								FinSi
							FinSi
						De Otro Modo: // Opcion fuera de rango
							anti_mike(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2)
							a = a - 1
							turno = 3
							comprobacion = 1
					FinSegun
			FinSegun
		FinPara
	Hasta Que (hp_1 <= 0 y hp_3 <= 0) o	(hp_2 <= 0)
	si (hp_1 <= 0 y hp_3 <= 0) Entonces
		resultado = 1
	sino si (hp_2 <= 0) Entonces
			resultado = 0
		FinSi
	FinSi
	final(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,resultado)
	final_dialogo(resultado,nom_enemigo,nom_pikmin)
	esperar 4 Segundos
	segun resultado Hacer
		0:
			final(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,0)
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Has ganado el combate, Felicidades                                                                                                    xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
		1:
			final(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,1)
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       Tus pikmins han sido debilitados, has perdido...                                                                                      xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Esperar 2 Segundos
	FinSegun
	Esperar tecla
FinFuncion
// Programa principal
Algoritmo pruebas
	Dimension nombres_pikmin[6]
	Dimension consumibles[5]
	Dimension nom_consumibles[5]
	// Asignacion de vida y energia
	hp_1 = 50 ; hp_2 = 100 ; hp_3 = 100
	ene_1 = 50 ; ene_2 = 50
	consumibles[1] = 5
	nom_consumibles[1] = "Actron 100mg"
	consumibles[2] = 1
	nom_consumibles[2] = "Actron 500mg"
	consumibles[3] = 1
	nom_consumibles[3] = "Actron 1g"
	consumibles[4] = 5
	nom_consumibles[4] = "Monster"
	consumibles[5] = 1
	nom_consumibles[5] = "Monster Ultra"
	// Asignacion de nombres
	nombres_pikmin[1] = "Bulpaul"
	nombres_pikmin[2] = "Bajielim"
	nombres_pikmin[3] = "Samael"
	nombres_pikmin[4] = "TAhiti"
	nombres_pikmin[5] = "Taigre"
	nombres_pikmin[6] = "Dolarcium"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                                                        x"
		Escribir "x           ll  ???                                   ll                                                                                        x"
		Escribir "x           ll                      HP:  ? /100       ll                                                                                        x"
		Escribir "x           ll  ENERGIA: ? /50                        ll                                                                                        x"
		Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                                                        x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
		Escribir "x                                                                                           xx  ???                                   xx        x"
		Escribir "x                                                                                           xx                      HP:  ? /100       xx        x"
		Escribir "x                                                                                           xx  ENERGIA: ? /50                        xx        x"
		Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
		Escribir "x                                                                                                                                               x"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "xx                                                                                                                                             xx"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Esperar 1 segundos
	Borrar Pantalla
	pikmin = 1 	// Tu pikmin principal
	pikmin_2 = 2 // Tu pikmin secundario
	enemigo = 4 // El del enemigo (4,5,6)
	//pre_combate(enemigo, pikmin,nombres_pikmin[enemigo],nombres_pikmin[pikmin],hp_1,hp_2,ene_1,ene_2) // Animacion inicial
	combate(enemigo,pikmin,pikmin_2,hp_1,hp_2,hp_3,ene_1,ene_2,nombres_pikmin[enemigo],nombres_pikmin[pikmin],nombres_pikmin[pikmin_2],consumibles,nom_consumibles,1) //Combate en bucle
FinAlgoritmo

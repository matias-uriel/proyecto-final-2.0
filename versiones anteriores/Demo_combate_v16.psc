Funcion volver = detalles_habilidades (pikmin,elemento,esp_atq,atq,def,esp_def,rapidez,elemento)
	Borrar Pantalla
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "x                                                                 x                                                                             x"
	Escribir "x        Nombre:                                                  x                           Estadisticas:                                     x"
	Escribir "x                                                                 x        Atq:                                                                 x"
	Escribir "x        Elemento:                                                x                                                                             x"
	Escribir "x                                                                 x        Atq esp:                                                             x"
	Escribir "x        Debilidad:                                               x                                                                             x"
	Escribir "x                                                                 x        Defensa:                                                             x"
	Escribir "x        Fortaleza:                                               x                                                                             x"
	Escribir "x                                                                 x        Defensa esp:                                                         x"
	Escribir "x                                                                 x                                                                             x"
	Escribir "x                                                                 x        Rapidez:                                                             x"
	Escribir "x                                                                 x                                                                             x"
	Escribir "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        MOVIMIENTOS:                                                                                                                           x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        -                                                                                                                                      x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        -                                                                                                                                      x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        -                                                                                                                                      x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        -                                                                                                                                      x"
	Escribir "x                                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "x        0. Atras                                                                                                                               x"
	Escribir "x                                                                                                                                               x"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	leer volver
FinFuncion
Funcion objeto = mochila (pocion_vida_chica Por Referencia,pocion_vida_mediana Por Referencia,pocion_vida_grande Por Referencia,pocion_energia_chica Por Referencia,pocion_energia_grande Por Referencia)
	Borrar Pantalla
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "x                                                                               x                                                               x"
	Escribir "x                                                             MOCHILA           x                                                               x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     Objetos:                                                                  x      Descripcion:                                             x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     1. Pocion chica:  " pocion_vida_chica " Disponibles                                           x      1. Te cura 30 puntos de vida                             x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     2. Pocion mediana:  " pocion_vida_mediana " Disponibles                                         x      2. Te cura 60 puntos de vida                             x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     3. Pocion grande:  " pocion_vida_grande " Disponibles                                          x      3. Te cura toda la vida                                  x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     4. Energia chica:  " pocion_energia_chica " Disponibles                                          x      4. Te da 15 puntos de energia	                            x"
	Escribir "x                                                                               x                                                               x"
	Escribir "x     5. Energia grande:  " pocion_energia_grande " Disponibles                                         x      5. Te da 30 puntos de energia                            x"
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
Funcion accion = interfaz_principal (pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,nombre)
	nombre = nombre + "?"
	Dimension nombre_pikmin[15]
	palabra_con_espacios(nombre,15,nombre_pikmin)
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	Escribir "xx                                                                                                   xx                                        xx"
	Escribir "xx                                                                                                   xx       1. Luchar       2. Mochila       xx"
	Escribir "xx       Que hara " Sin Saltar
	Para b=1 Hasta 15 Con Paso 1 Hacer
		Escribir nombre_pikmin[b] Sin Saltar
	FinPara
	Escribir "                                                                    xx                                        xx"
	Escribir "xx                                                                                                   xx       3. Pikmin       4. Info          xx"
	Escribir "xx                                                                                                   xx                                        xx"
	Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	leer accion
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
	sino si ataque > ataque_esp Entonces
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
	FinSi
FinFuncion
// Funcion calcula daño dependiendo el elemento:
Funcion eficasia = valor_de_ataque_aliado (habilidad Por Referencia, elemento_habilidad_propia, elemento_enemigo)
	Si elemento_habilidad_propia == 3 y elemento_enemigo == 2 Entonces
		habilidad = habilidad * 2
		eficasia = 4
	Sino si elemento_habilidad_propia == 2 y elemento_enemigo == 1 Entonces
			habilidad = habilidad * 2
			eficasia = 4
		Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 3 Entonces
				habilidad = habilidad * 2
				eficasia = 4
			Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 4 Entonces
					habilidad = habilidad * 2
					eficasia = 4
				Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 5 Entonces
						habilidad = habilidad * 2
						eficasia = 4
					Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 6 Entonces
							habilidad = habilidad * 2
							eficasia = 4
						Sino si elemento_habilidad_propia == 2 y elemento_enemigo == 4 Entonces
								habilidad = habilidad * 1.5
								eficasia = 3
							Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 6 Entonces
									habilidad = habilidad * 1.5
									eficasia = 3
								Sino si elemento_habilidad_propia == 3 y elemento_enemigo == 5 Entonces
										habilidad = habilidad * 1.5
										eficasia = 3
									Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 3 Entonces
											habilidad = habilidad * 1.5
											eficasia = 3
										Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 1 Entonces
												habilidad = habilidad * 1.5
												eficasia = 3
											Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 2 Entonces
													habilidad = habilidad * 1.5
													eficasia = 3
												sino Si elemento_habilidad_propia == 2 y elemento_enemigo == 3 Entonces
														habilidad = habilidad * 0.5
														eficasia = 1
													Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 2 Entonces
															habilidad = habilidad * 0.5
															eficasia = 1
														Sino si elemento_habilidad_propia == 3 y elemento_enemigo == 1 Entonces
																habilidad = habilidad * 0.5
																eficasia = 1
															Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 5 Entonces
																	habilidad = habilidad * 0.5
																	eficasia = 1
																Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 6 Entonces
																		habilidad = habilidad * 0.5
																		eficasia = 1
																	Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 4 Entonces
																			habilidad = habilidad * 0.5
																			eficasia = 1
																		Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 2 Entonces
																				habilidad = habilidad * 0.8
																				eficasia = 1
																			Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 1 Entonces
																					habilidad = habilidad * 0.8
																					eficasia = 2
																				Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 3 Entonces
																						habilidad = habilidad * 0.8
																						eficasia = 2
																					Sino si elemento_habilidad_propia == 3 y elemento_enemigo == 4 Entonces
																							habilidad = habilidad * 0.8
																							eficasia = 2
																						Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 5 Entonces
																								habilidad = habilidad * 0.8
																								eficasia = 2
																							Sino si elemento_habilidad_propia == 2 y elemento_enemigo == 6 Entonces
																									habilidad = habilidad * 0.8
																									eficasia = 2
																								SiNo
																									habilidad = habilidad * 1
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
//Funcion que calcula el critico
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
				esperar 200 Milisegundos
			2:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       . .                                                                                                                                   xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				esperar 200 Milisegundos
			3:
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx       . . .                                                                                                                                 xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "xx                                                                                                                                             xx"
				Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
				esperar 100 Milisegundos
		FinSegun
	FinPara	
FinFuncion
//
Funcion interfaz_eficasia (enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia)
	Borrar Pantalla
	interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
	interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
	segun eficasia Hacer
		1:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es muy poco efectivo                                                                                                        xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		2:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es poco efectivo                                                                                                            xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		3:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es efectivo                                                                                                                 xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		4:
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx       El ataque es muy efectivo                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "xx                                                                                                                                             xx"
			Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
	FinSegun
	Esperar 2 Segundos
FinFuncion
Funcion cambio_pikmin (pikmin,enemigo,nom_pikmin,hp_1,hp_2,ene_1,ene_2)
	Dimension nombre_pikmin[15]
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
				Escribir "xx       Combate contra " Sin Saltar
				Para b=1 Hasta 15 Con Paso 1 Hacer 
					Escribir nombre_enemigo[b] Sin Saltar
				FinPara
				Escribir "                                                                                                        xx"
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
// Funcion del sistema de combate
Funcion combate (enemigo,pikmin,pikmin_2,hp_1,hp_2,hp_3,ene_1,ene_2,nom_enemigo,nom_pikmin,nom_pikmin2,pocion_vida_chica,pocion_vida_mediana,pocion_vida_grande,pocion_energia_chica,pocion_energia_grande)
	Dimension tipo[6],esp_atq[6],atq[6],def[6],esp_def[6],rapidez[6],elemento[6]
	Dimension dmg_aliado[4],dmg_enemigo[4],habilidades_aliado_name[4],habilidades_enemigo_name[4],elemento_habilidad[4],elemento_habilidad_enemigo[4],precision_habilidad[4],precision_habilidad_enemigo[4]
	// Tipos elementales:
	tipo[1]= 1 // 	Planta 	= 1
	tipo[2]= 2 //	Fuego 	= 2	
	tipo[3]= 3 //	Agua 	= 3
	tipo[4]= 4 //	Lucha 	= 4
	tipo[5]= 5 //	Acero 	= 5
	tipo[6]= 6 //	Normal 	= 6
	// Estadisticas:
	esp_atq[1]= 5; atq[1]= 	5; def[1]= 	5; esp_def[1]= 	5; rapidez[1]= 5; elemento[1] = 1 // Bulpaul
	esp_atq[2]= 5; atq[2]= 	5; def[2]= 	5; esp_def[2]= 	5; rapidez[2]= 5; elemento[2] = 3 // Bajielim 
	esp_atq[3]= 5; atq[3]= 	5; def[3]= 	5; esp_def[3]= 	5; rapidez[3]= 5; elemento[3] = 4 // Samael
	esp_atq[4]= 5; atq[4]= 	5; def[4]= 	5; esp_def[4]= 	5; rapidez[4]= 4; elemento[4] = 2 // TAhiti
	esp_atq[5]= 5; atq[5]= 	5; def[5]= 	5; esp_def[5]= 	5; rapidez[5]= 4; elemento[5] = 6 // Taigre
	esp_atq[6]= 5; atq[6]= 	5; def[6]= 	5; esp_def[6]= 	5; rapidez[6]= 4; elemento[6] = 5 // Dolarcium
	num_ref = 15
	Dimension habilidad_mia_1[num_ref],habilidad_mia_2[num_ref],habilidad_mia_3[num_ref],habilidad_mia_4[num_ref]
	Dimension habilidad_enemiga_1[num_ref],habilidad_enemiga_2[num_ref],habilidad_enemiga_3[num_ref],habilidad_enemiga_4[num_ref]
	
	segun pikmin hacer
		1:
			// Habilidades Bulpaul:
			habilidades_aliado_name[1] = "Latigo cepa"
			palabra_con_espacios(habilidades_aliado_name[1],num_ref,habilidad_mia_1)
			dmg_aliado[1] = 10
			elemento_habilidad[1] = 1
			precision_habilidad[1] = 8
			
			habilidades_aliado_name[2] = "Mordisco"
			palabra_con_espacios(habilidades_aliado_name[2],num_ref,habilidad_mia_2)
			dmg_aliado[2] = 1
			elemento_habilidad[2] = 1
			precision_habilidad[2] = 10
			
			habilidades_aliado_name[3] = "Tortazo"
			palabra_con_espacios(habilidades_aliado_name[3],num_ref,habilidad_mia_3)
			dmg_aliado[3] = 1
			elemento_habilidad[3] = 1
			precision_habilidad[3] = 10
			
			habilidades_aliado_name[4] = "Absorber"
			palabra_con_espacios(habilidades_aliado_name[4],num_ref,habilidad_mia_4)
			dmg_aliado[4] = 1
			elemento_habilidad[4] = 1
			precision_habilidad[4] = 10
		2:
			// Habilidades Bajielim:
			habilidades_aliado_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_aliado_name[1],num_ref,habilidad_mia_1)
			dmg_aliado[1] = 1
			elemento_habilidad[1] = 1
			precision_habilidad[1] = 10
			
			habilidades_aliado_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_aliado_name[2],num_ref,habilidad_mia_2)
			dmg_aliado[2] = 1
			elemento_habilidad[2] = 1
			precision_habilidad[2] = 10
			
			habilidades_aliado_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_aliado_name[3],num_ref,habilidad_mia_3)
			dmg_aliado[3] = 1
			elemento_habilidad[3] = 1
			precision_habilidad[3] = 10
			
			habilidades_aliado_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_aliado_name[4],num_ref,habilidad_mia_4)
			dmg_aliado[4] = 1  
			elemento_habilidad[4] = 1
			precision_habilidad[4] = 10
		3:
			// Habilidades Samael:
			habilidades_aliado_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_aliado_name[1],num_ref,habilidad_mia_1)
			dmg_aliado[1] = 1
			elemento_habilidad[1] = 1
			precision_habilidad[1] = 10
			
			habilidades_aliado_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_aliado_name[2],num_ref,habilidad_mia_2)
			dmg_aliado[2] = 1
			elemento_habilidad[2] = 1
			precision_habilidad[2] = 10
			
			habilidades_aliado_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_aliado_name[3],num_ref,habilidad_mia_3)
			dmg_aliado[3] = 1
			elemento_habilidad[3] = 1
			precision_habilidad[3] = 10
			
			habilidades_aliado_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_aliado_name[4],num_ref,habilidad_mia_4)
			dmg_aliado[4] = 1  
			elemento_habilidad[4] = 1
			precision_habilidad[4] = 10
	FinSegun
	
	segun enemigo hacer
		4:
			// Habilidades TAhiti:
			habilidades_enemigo_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_enemigo_name[1],num_ref,habilidad_enemiga_1)
			dmg_enemigo[1] = 1
			elemento_habilidad_enemigo[1] = 1
			precision_habilidad_enemigo[1] = 10
			
			habilidades_enemigo_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_enemigo_name[2],num_ref,habilidad_enemiga_2)
			dmg_enemigo[2] = 1
			elemento_habilidad_enemigo[2] = 1
			precision_habilidad_enemigo[2] = 10
			
			habilidades_enemigo_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_enemigo_name[3],num_ref,habilidad_enemiga_3)
			dmg_enemigo[3] = 1
			elemento_habilidad_enemigo[3] = 1
			precision_habilidad_enemigo[3] = 10
			
			habilidades_enemigo_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_enemigo_name[4],num_ref,habilidad_enemiga_4)
			dmg_enemigo[4] = 1
			elemento_habilidad_enemigo[4] = 1
			precision_habilidad_enemigo[4] = 10
		5:
			// Habilidades Taigre:
			habilidades_enemigo_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_enemigo_name[1],num_ref,habilidad_enemiga_1)
			dmg_enemigo[1] = 1
			elemento_habilidad_enemigo[1] = 1
			precision_habilidad_enemigo[1] = 10
			
			habilidades_enemigo_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_enemigo_name[2],num_ref,habilidad_enemiga_2)
			dmg_enemigo[2] = 1
			elemento_habilidad_enemigo[2] = 1
			precision_habilidad_enemigo[2] = 10
			
			habilidades_enemigo_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_enemigo_name[3],num_ref,habilidad_enemiga_3)
			dmg_enemigo[3] = 1
			elemento_habilidad_enemigo[3] = 1
			precision_habilidad_enemigo[3] = 10
			
			habilidades_enemigo_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_enemigo_name[4],num_ref,habilidad_enemiga_4)
			dmg_enemigo[4] = 1
			elemento_habilidad_enemigo[4] = 1
			precision_habilidad_enemigo[4] = 10
		6:
			// Habilidades Dolarcium:
			habilidades_enemigo_name[1] = "habilidad 1"
			palabra_con_espacios(habilidades_enemigo_name[1],num_ref,habilidad_enemiga_1)
			dmg_enemigo[1] = 1
			elemento_habilidad_enemigo[1] = 1
			precision_habilidad_enemigo[1] = 10
			
			habilidades_enemigo_name[2] = "habilidad 2"
			palabra_con_espacios(habilidades_enemigo_name[2],num_ref,habilidad_enemiga_2)
			dmg_enemigo[2] = 1
			elemento_habilidad_enemigo[2] = 1
			precision_habilidad_enemigo[2] = 10
			
			habilidades_enemigo_name[3] = "habilidad 3"
			palabra_con_espacios(habilidades_enemigo_name[3],num_ref,habilidad_enemiga_3)
			dmg_enemigo[3] = 1
			elemento_habilidad_enemigo[3] = 1
			precision_habilidad_enemigo[3] = 10
			
			habilidades_enemigo_name[4] = "habilidad 4"
			palabra_con_espacios(habilidades_enemigo_name[4],num_ref,habilidad_enemiga_4)
			dmg_enemigo[4] = 1
			elemento_habilidad_enemigo[4] = 1
			precision_habilidad_enemigo[4] = 10
	FinSegun
	
	Repetir
		para a = 1 Hasta 2 Con Paso 1 Hacer
			// turno = 1 (turno mio) turno = 0 (turno enemigo)
			Segun a Hacer
				1:
					Si rapidez[pikmin] == rapidez[enemigo] Entonces
						turno = Aleatorio(0,1)
						si turno == 1 Entonces
							turno_siguiente = 0
						SiNo
							turno_siguiente = 1
						FinSi
					Sino si rapidez[pikmin] < rapidez[enemigo]
							turno = 0 
							turno_siguiente = 1
						SiNo
							turno = 1
							turno_siguiente = 0
						Fin si
					FinSi
				2:
					turno = turno_siguiente
			FinSegun
			Segun turno Hacer
				0:
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
					Esperar 2 Segundos
					espera(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
					hp_1 = hp_1 - 1
				1:
					Borrar Pantalla
					accion = interfaz_principal(pikmin,enemigo,hp_1,hp_2,ene_1,ene_2,nom_pikmin)
					segun accion Hacer
						1:  // Opcion Lucha
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
											turno = 1
										1,2,3,4:
											evasion = precision(precision_habilidad[ataque])
											espera(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
											si evasion == 1 Entonces
												Segun ataque Hacer
													1:
														Borrar Pantalla
														palabra_con_espacios(habilidades_enemigo_name[ataque],num_ref,habilidad_enemiga_1)
														interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
														interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
														Segun pikmin Hacer
															1:
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx       Bulpaul ha usado " Sin Saltar
																Para b = 1 Hasta num_ref Con Paso 1 Hacer
																	Escribir habilidad_mia_1[b] Sin Saltar
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
																	Escribir habilidad_mia_1[b] Sin Saltar
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
																	Escribir habilidad_mia_1[b] Sin Saltar
																FinPara
																Escribir "                                                                                                      xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														FinSegun
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],dmg_aliado[ataque])
														eficasia = valor_de_ataque_aliado(dmg_aliado[ataque],elemento_habilidad[ataque],elemento[enemigo])
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia)
														critico(dmg_aliado[ataque],enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(dmg_aliado[ataque],def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - dmg_aliado[ataque])
													2:
														Borrar Pantalla
														palabra_con_espacios(habilidades_enemigo_name[ataque],num_ref,habilidad_enemiga_2)
														interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
														interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
														Segun pikmin Hacer
															1:
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx       Bulpaul ha usado " Sin Saltar
																Para b = 1 Hasta num_ref Con Paso 1 Hacer
																	Escribir habilidad_mia_2[b] Sin Saltar
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
																	Escribir habilidad_mia_2[b] Sin Saltar
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
																	Escribir habilidad_mia_2[b] Sin Saltar
																FinPara
																Escribir "                                                                                                      xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														FinSegun
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],dmg_aliado[ataque])
														eficasia = valor_de_ataque_aliado(dmg_aliado[ataque],elemento_habilidad[ataque],elemento[enemigo])
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia)
														critico(dmg_aliado[ataque],enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(dmg_aliado[ataque],def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - dmg_aliado[ataque])
													3:
														Borrar Pantalla
														palabra_con_espacios(habilidades_enemigo_name[ataque],num_ref,habilidad_enemiga_3)
														interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
														interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
														Segun pikmin Hacer
															1:
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx       Bulpaul ha usado " Sin Saltar
																Para b = 1 Hasta num_ref Con Paso 1 Hacer
																	Escribir habilidad_mia_3[b] Sin Saltar
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
																	Escribir habilidad_mia_3[b] Sin Saltar
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
																	Escribir habilidad_mia_3[b] Sin Saltar
																FinPara
																Escribir "                                                                                                      xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														FinSegun
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],dmg_aliado[ataque])
														eficasia = valor_de_ataque_aliado(dmg_aliado[ataque],elemento_habilidad[ataque],elemento[enemigo])
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia)
														critico(dmg_aliado[ataque],enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(dmg_aliado[ataque],def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - dmg_aliado[ataque])
													4:
														Borrar Pantalla
														palabra_con_espacios(habilidades_enemigo_name[ataque],num_ref,habilidad_enemiga_4)
														interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
														interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
														Segun pikmin Hacer
															1:
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx       Bulpaul ha usado " Sin Saltar
																Para b = 1 Hasta num_ref Con Paso 1 Hacer
																	Escribir habilidad_mia_4[b] Sin Saltar
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
																	Escribir habilidad_mia_4[b] Sin Saltar
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
																	Escribir habilidad_mia_4[b] Sin Saltar
																FinPara
																Escribir "                                                                                                      xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "xx                                                                                                                                             xx"
																Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
														FinSegun
														Esperar 2 Segundos
														categoria = dano(atq[pikmin],esp_atq[pikmin],dmg_aliado[ataque])
														eficasia = valor_de_ataque_aliado(dmg_aliado[ataque],elemento_habilidad[ataque],elemento[enemigo])
														interfaz_eficasia(enemigo,pikmin,hp_1,hp_2,ene_1,ene_2,eficasia)
														critico(dmg_aliado[ataque],enemigo,pikmin,hp_1,hp_2,ene_1,ene_2)
														arreglo_de_defensa(dmg_aliado[ataque],def[enemigo],esp_def[enemigo],categoria)
														hp_2 = redon(hp_2 - dmg_aliado[ataque])
												FinSegun
											SiNo si evasion == 0 Entonces
													Borrar Pantalla
													interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
													interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
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
											interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
											interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx       Esa habilidad no existe                                                                                                               xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "xx                                                                                                                                             xx"
											Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
											a = a - 1
											turno = 1
											Esperar 2 Segundos
									FinSegun
							FinSegun
						2:
							objeto = mochila(pocion_vida_chica,pocion_vida_mediana,pocion_vida_grande,pocion_energia_chica,pocion_energia_grande)
							Segun objeto Hacer
								0:
									a = a - 1
									turno = 1
								1:
									si pocion_vida_chica >= 1 Entonces
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
											turno = 1
											Esperar 2 Segundos
										sino si hp_1 > 70 Entonces
												hp_1 = 100
											sino si hp_1 <= 70
													hp_1 = hp_1 + 30	
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
										turno = 1
										Esperar 2 Segundos
									FinSi
								2:
									si pocion_vida_mediana >= 1 Entonces
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
											turno = 1
											Esperar 2 Segundos
										sino si hp_1 > 40 Entonces
												hp_1 = 100
											sino si hp_1 <= 40
													hp_1 = hp_1 + 60	
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
										turno = 1
										Esperar 2 Segundos
									FinSi
								3:
									si pocion_vida_grande >= 1 Entonces
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
											turno = 1
											Esperar 2 Segundos
										sino 
											hp_1 = 100
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
										turno = 1
										Esperar 2 Segundos
									FinSi
								4:
									si pocion_energia_chica >= 1 Entonces
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
											turno = 1
											Esperar 2 Segundos
										sino si ene_1 >= 35 Entonces
												ene_1 = 50
											sino si ene_1 <= 35
													ene_1 = ene_1 + 15	
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
										turno = 1
										Esperar 2 Segundos
									FinSi
								5:
									si pocion_energia_grande >= 1 Entonces
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
											turno = 1
											Esperar 2 Segundos
										sino si ene_1 >= 20 Entonces
												ene_1 = 50
											sino si ene_1 <= 20
													ene_1 = ene_1 + 30	
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
										turno = 1
										Esperar 2 Segundos
									FinSi
								De Otro Modo:
									Borrar Pantalla
									interfaz_pikmin(enemigo,hp_1,hp_2,ene_1,ene_2)
									interfaz_pikmin(pikmin,hp_1,hp_2,ene_1,ene_2)
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx       Esa orden no tiene sentido                                                                                                            xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "xx                                                                                                                                             xx"
									Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
									a = a - 1
									turno = 1
									Esperar 2 Segundos
							FinSegun
						3:// cambiar pikmin
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
							segun aviso Hacer
								1:
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
											habilidades_aliado_name[1] = "Latigo cepa"
											palabra_con_espacios(habilidades_aliado_name[1],num_ref,habilidad_mia_1)
											dmg_aliado[1] = 10
											elemento_habilidad[1] = 1
											precision_habilidad[1] = 8
											
											habilidades_aliado_name[2] = "Mordisco"
											palabra_con_espacios(habilidades_aliado_name[2],num_ref,habilidad_mia_2)
											dmg_aliado[2] = 1
											elemento_habilidad[2] = 1
											precision_habilidad[2] = 10
											
											habilidades_aliado_name[3] = "Tortazo"
											palabra_con_espacios(habilidades_aliado_name[3],num_ref,habilidad_mia_3)
											dmg_aliado[3] = 1
											elemento_habilidad[3] = 1
											precision_habilidad[3] = 10
											
											habilidades_aliado_name[4] = "Absorber"
											palabra_con_espacios(habilidades_aliado_name[4],num_ref,habilidad_mia_4)
											dmg_aliado[4] = 1
											elemento_habilidad[4] = 1
											precision_habilidad[4] = 10
										2:
											// Habilidades Bajielim:
											habilidades_aliado_name[1] = "habilidad 1"
											palabra_con_espacios(habilidades_aliado_name[1],num_ref,habilidad_mia_1)
											dmg_aliado[1] = 1
											elemento_habilidad[1] = 1
											precision_habilidad[1] = 10
											
											habilidades_aliado_name[2] = "habilidad 2"
											palabra_con_espacios(habilidades_aliado_name[2],num_ref,habilidad_mia_2)
											dmg_aliado[2] = 1
											elemento_habilidad[2] = 1
											precision_habilidad[2] = 10
											
											habilidades_aliado_name[3] = "habilidad 3"
											palabra_con_espacios(habilidades_aliado_name[3],num_ref,habilidad_mia_3)
											dmg_aliado[3] = 1
											elemento_habilidad[3] = 1
											precision_habilidad[3] = 10
											
											habilidades_aliado_name[4] = "habilidad 4"
											palabra_con_espacios(habilidades_aliado_name[4],num_ref,habilidad_mia_4)
											dmg_aliado[4] = 1  
											elemento_habilidad[4] = 1
											precision_habilidad[4] = 10
										3:
											// Habilidades Samael:
											habilidades_aliado_name[1] = "habilidad 1"
											palabra_con_espacios(habilidades_aliado_name[1],num_ref,habilidad_mia_1)
											dmg_aliado[1] = 1
											elemento_habilidad[1] = 1
											precision_habilidad[1] = 10
											
											habilidades_aliado_name[2] = "habilidad 2"
											palabra_con_espacios(habilidades_aliado_name[2],num_ref,habilidad_mia_2)
											dmg_aliado[2] = 1
											elemento_habilidad[2] = 1
											precision_habilidad[2] = 10
											
											habilidades_aliado_name[3] = "habilidad 3"
											palabra_con_espacios(habilidades_aliado_name[3],num_ref,habilidad_mia_3)
											dmg_aliado[3] = 1
											elemento_habilidad[3] = 1
											precision_habilidad[3] = 10
											
											habilidades_aliado_name[4] = "habilidad 4"
											palabra_con_espacios(habilidades_aliado_name[4],num_ref,habilidad_mia_4)
											dmg_aliado[4] = 1  
											elemento_habilidad[4] = 1
											precision_habilidad[4] = 10
									FinSegun
								De Otro Modo:
									a = a - 1
									turno = 1
							FinSegun
						4:
							detalles_habilidades ()
							
						De Otro Modo: // Opcion fuera de rango
							a = a - 1
							turno = 1
					FinSegun
			FinSegun
		FinPara
	Hasta Que (hp_1 <= 0) o	(hp_2 <= 0)
FinFuncion
// Programa principal
Algoritmo pruebas
	Dimension nombres_pikmin[6]
	// Asignacion de vida y energia
	hp_1 = 100 ; hp_2 = 100 ; hp_3 = 100
	ene_1 = 50 ; ene_2 = 50
	pocion_vida_chica = 5
	pocion_vida_mediana = 0
	pocion_vida_grande = 0
	pocion_energia_chica = 5
	pocion_energia_grande = 0
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
	Esperar 2 segundos
	Borrar Pantalla
	pikmin = 1 	// Tu pikmin (1,2,3)
	pikmin_2 = 2
	enemigo = 4 // El del enemigo (4,5,6)
	//pre_combate(enemigo, pikmin,nombres_pikmin[enemigo],nombres_pikmin[pikmin],hp_1,hp_2,ene_1,ene_2) // Animacion inicial
	combate(enemigo,pikmin,pikmin_2,hp_1,hp_2,hp_3,ene_1,ene_2,nombres_pikmin[enemigo],nombres_pikmin[pikmin],nombres_pikmin[pikmin_2],pocion_vida_chica,pocion_vida_mediana,pocion_vida_grande,pocion_energia_chica,pocion_energia_grande) //Combate en bucle
FinAlgoritmo

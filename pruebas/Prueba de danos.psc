// Funcion calcula la categoria del ataque
Funcion categoria <- dano (ataque,ataque_esp,habilidad Por Referencia)
	Si ataque_esp > ataque Entonces
		Escribir "ataque_esp mayor"
		Segun ataque_esp Hacer
			1:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			2:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			3:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			4:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			5:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			6:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			7:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			8:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			9:
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
			10:	
				Escribir habilidad " + " ataque_esp 
				habilidad = habilidad + ataque_esp
				categoria = 0
		FinSegun
	sino si ataque > ataque_esp Entonces
			Escribir "ataque mayor"
			Segun ataque Hacer
				1:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				2:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				3:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				4:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				5:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				6:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				7:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				8:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				9:
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
				10:	
					Escribir habilidad " + " ataque
					habilidad = habilidad + ataque
					categoria = 1
			FinSegun
		FinSi
	FinSi
FinFuncion
// Funcion calcula daño dependiendo el elemento:
Funcion valor_de_ataque_aliado (habilidad Por Referencia, elemento_habilidad_propia, elemento_enemigo)
	Si elemento_habilidad_propia == 3 y elemento_enemigo == 2 Entonces
		habilidad = habilidad * 2
		Escribir "aumenta un x2"
	Sino si elemento_habilidad_propia == 2 y elemento_enemigo == 1 Entonces
			habilidad = habilidad * 2
			Escribir "aumenta un x2"
		Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 3 Entonces
				habilidad = habilidad * 2
				Escribir "aumenta un x2"
			Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 4 Entonces
					habilidad = habilidad * 2
					Escribir "aumenta un x2"
				Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 5 Entonces
						habilidad = habilidad * 2
						Escribir "aumenta un x2"
					Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 6 Entonces
							habilidad = habilidad * 2
							Escribir "aumenta un x2"
						Sino si elemento_habilidad_propia == 2 y elemento_enemigo == 6 Entonces
								habilidad = habilidad * 1.5
								Escribir "aumenta un x1,5"
							Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 4 Entonces
									habilidad = habilidad * 1.5
									Escribir "aumenta un x1,5"
								Sino si elemento_habilidad_propia == 3 y elemento_enemigo == 5 Entonces
										habilidad = habilidad * 1.5
										Escribir "aumenta un x1,5"
									Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 3 Entonces
											habilidad = habilidad * 1.5
											Escribir "aumenta un x1,5"
										Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 1 Entonces
												habilidad = habilidad * 1.5
												Escribir "aumenta un x1,5"
											Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 2 Entonces
													habilidad = habilidad * 1.5
													Escribir "aumenta un x1,5"
												sino Si elemento_habilidad_propia == 2 y elemento_enemigo == 3 Entonces
														habilidad = habilidad * 0.5
														Escribir "aumenta un x0,5"
													Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 2 Entonces
															habilidad = habilidad * 0.5
															Escribir "aumenta un x0,5"
														Sino si elemento_habilidad_propia == 3 y elemento_enemigo == 1 Entonces
																habilidad = habilidad * 0.5
																Escribir "aumenta un x0,5"
															Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 5 Entonces
																	habilidad = habilidad * 0.5
																	Escribir "aumenta un x0,5"
																Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 6 Entonces
																		habilidad = habilidad * 0.5
																		Escribir "aumenta un x0,5"
																	Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 4 Entonces
																			habilidad = habilidad * 0.5
																			Escribir "aumenta un x0,5"
																		Sino si elemento_habilidad_propia == 4 y elemento_enemigo == 2 Entonces
																				habilidad = habilidad * 0.8
																				Escribir "aumenta un x0,8"
																			Sino si elemento_habilidad_propia == 6 y elemento_enemigo == 1 Entonces
																					habilidad = habilidad * 0.8
																					Escribir "aumenta un x0,8"
																				Sino si elemento_habilidad_propia == 5 y elemento_enemigo == 3 Entonces
																						habilidad = habilidad * 0.8
																						Escribir "aumenta un x0,8"
																					Sino si elemento_habilidad_propia == 3 y elemento_enemigo == 4 Entonces
																							habilidad = habilidad * 0.8
																							Escribir "aumenta un x0,8"
																						Sino si elemento_habilidad_propia == 1 y elemento_enemigo == 5 Entonces
																								habilidad = habilidad * 0.8
																								Escribir "aumenta un x0,8"
																							Sino si elemento_habilidad_propia == 2 y elemento_enemigo == 6 Entonces
																									habilidad = habilidad * 0.8
																									Escribir "aumenta un x0,8"
																								SiNo
																									habilidad = habilidad * 1
																									Escribir "no aumenta, x1"
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
Funcion critico (habilidad Por Referencia)
	prob_crit = Aleatorio(0,100)
	Si prob_crit >= 0 y prob_crit <= 50 Entonces
		Escribir "fue critico x2"
		habilidad = habilidad * 2
	FinSi
FinFuncion
// Funcion que calcula la reduccion de daño
Funcion arreglo_de_defensa (habilidad Por Referencia,defensa,defensa_esp,categoria)
	Segun categoria Hacer
		0:
			Escribir "Se ataca a la defensa esp " Sin Saltar
			Segun defensa_esp Hacer
				1:
					habilidad = habilidad*0.90 	// 10% de reduccion de daño
					Escribir ",10% de reduccion de daño"
				2:
					habilidad = habilidad*0.85	// 15% de reduccion de daño
					Escribir ",15% de reduccion de daño"
				3:
					habilidad = habilidad*0.80	// 20% de reduccion de daño
					Escribir ",20% de reduccion de daño"
				4:
					habilidad = habilidad*0.70	// 30% de reduccion de daño
					Escribir ",30% de reduccion de daño"
				5:
					habilidad = habilidad*0.60	// 40% de reduccion de daño
					Escribir ",40% de reduccion de daño"
			FinSegun
		1:
			Escribir "Se ataca a la defensa " Sin Saltar
			Segun defensa Hacer
				1:
					habilidad = habilidad*0.90 	// 10% de reduccion de daño
					Escribir ",10% de reduccion de daño"
				2:
					habilidad = habilidad*0.85	// 15% de reduccion de daño
					Escribir ",15% de reduccion de daño"
				3:
					habilidad = habilidad*0.80	// 20% de reduccion de daño
					Escribir ",20% de reduccion de daño"
				4:
					habilidad = habilidad*0.70	// 30% de reduccion de daño
					Escribir ",30% de reduccion de daño"
				5:
					habilidad = habilidad*0.60	// 40% de reduccion de daño
					Escribir ",40% de reduccion de daño"
			FinSegun
	FinSegun
FinFuncion
Algoritmo sin_titulo
	Dimension tipo[6],esp_atq[6],atq[6],def[6],esp_def[6],rapidez[6]
	Dimension dmg_aliado[4],dmg_enemigo[4],habilidades_aliado_name[4],habilidades_enemigo_name[4],elemento_habilidad[4],elemento_habilidad_enemigo[4],precision_habilidad[4],precision_habilidad_enemigo[4]
	
	esp_atq[1]= 2; atq[1]= 	5; def[1]= 	5; esp_def[1]= 	5; rapidez[1]= 5; // Bulpaul
	esp_atq[2]= 5; atq[2]= 	5; def[2]= 	5; esp_def[2]= 	5; rapidez[2]= 5; // Bajielim 
	esp_atq[3]= 5; atq[3]= 	5; def[3]= 	5; esp_def[3]= 	5; rapidez[3]= 5; // Samael
	esp_atq[4]= 5; atq[4]= 	5; def[4]= 	5; esp_def[4]= 	5; rapidez[4]= 4; // TAhiti
	esp_atq[5]= 5; atq[5]= 	5; def[5]= 	5; esp_def[5]= 	5; rapidez[5]= 4; // Taigre
	esp_atq[6]= 5; atq[6]= 	5; def[6]= 	5; esp_def[6]= 	5; rapidez[6]= 4; // Dolarcium
	
	tipo[1]= 1 // 	Planta 	= 1
	tipo[2]= 2 //	Fuego 	= 2	
	tipo[3]= 3 //	Agua 	= 3
	tipo[4]= 4 //	Lucha 	= 4
	tipo[5]= 5 //	Acero 	= 5
	tipo[6]= 6 //	Normal 	= 6
	
	habilidades_aliado_name[1] = "1.Latigo cepa"
	dmg_aliado[1] = 10
	elemento_habilidad[1] = 1
	
	ataque = 1
	pikmin = 1
	enemigo = 4
	
	Escribir "Dano inicial " dmg_aliado[1]
	
	categoria = dano(atq[pikmin],esp_atq[pikmin],dmg_aliado[ataque])
	
	Escribir "Modificacion " dmg_aliado[1]
	
	valor_de_ataque_aliado(dmg_aliado[ataque],elemento_habilidad[ataque],tipo[3])
	
	Escribir "Modificacion " dmg_aliado[1]
	
	critico(dmg_aliado[ataque])
	
	Escribir "Modificacion " dmg_aliado[1]
	
	arreglo_de_defensa(dmg_aliado[ataque],def[enemigo],esp_def[enemigo],categoria)
	
	Escribir "Modificacion " dmg_aliado[1]
	
FinAlgoritmo

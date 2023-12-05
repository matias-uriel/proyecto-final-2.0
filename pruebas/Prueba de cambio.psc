funcion pikmins (grupo)
	segun grupo Hacer
		1.1:
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x           1.1                                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                           xx  NOMBRE                                xx        x"
			Escribir "x                                                                                           xx                      HP: 0/0           xx        x"
			Escribir "x                                                                                           xx  ENERGIA: 0/0                          xx        x"
			Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		2.1:
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x           2.1                                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                           xx  NOMBRE                                xx        x"
			Escribir "x                                                                                           xx                      HP: 0/0           xx        x"
			Escribir "x                                                                                           xx  ENERGIA: 0/0                          xx        x"
			Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		3.1:
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x           3.1                                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                           xx  NOMBRE                                xx        x"
			Escribir "x                                                                                           xx                      HP: 0/0           xx        x"
			Escribir "x                                                                                           xx  ENERGIA: 0/0                          xx        x"
			Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		1.2:
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x           1.2                                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                           xx  NOMBRE                                xx        x"
			Escribir "x                                                                                           xx                      HP: 0/0           xx        x"
			Escribir "x                                                                                           xx  ENERGIA: 0/0                          xx        x"
			Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		2.2:
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x           2.2                                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                           xx  NOMBRE                                xx        x"
			Escribir "x                                                                                           xx                      HP: 0/0           xx        x"
			Escribir "x                                                                                           xx  ENERGIA: 0/0                          xx        x"
			Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
		3.2:
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x                                                                                                                                               x"
			Escribir "x           3.2                                                                             oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                           xx  NOMBRE                                xx        x"
			Escribir "x                                                                                           xx                      HP: 0/0           xx        x"
			Escribir "x                                                                                           xx  ENERGIA: 0/0                          xx        x"
			Escribir "x                                                                                           oooooooooooooooooooooooooooooooooooooooooooo        x"
			Escribir "x                                                                                                                                               x"
	FinSegun
FinFuncion

Algoritmo sin_titulo
	grupo_actual = 1
	z = 0
	Dimension grupo[2]
	Escribir "Elejir equipo"
	leer equipo
	segun equipo Hacer
		1:
			grupo[1] = 1.1
			grupo[2] = 1.2
		2:
			grupo[1] = 2.1
			grupo[2] = 2.2	
		3:
			grupo[1] = 3.1
			grupo[2] = 3.2	
	FinSegun
	Repetir
		Borrar Pantalla
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "x                                                                                                                                               x"
		Escribir "x                                                                                                     Z   Z   Z                                 x"
		Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                                Z   Z  Z                                x"
		Escribir "x           yy     NOMBRE                             yy                                              Z   Z   Z                                 x"
		Escribir "x           yy                      HP: 0/0           yy                                               Z____Z                                   x"
		Escribir "x           oooooooooooooooooooooooooooooooooooooooooooo                                               /_  _\                                   x"
		Escribir "x                                                                                                     / 1 \1 \                                  x"
		Escribir "x                                                                                                    /    o   \                                 x"
		Escribir "x                                                                                                   /          \                                x"
		Escribir "x                                                                                                  /____________\                               x"
		Escribir "x                                                                                                   ( (       ( (                               x"
		Escribir "x                                                                                                   _)_)_     _)_)_                             x"
		pikmins(grupo[grupo_actual])
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Escribir "xx                                                                               xx                                                            xx"
		Escribir "xx                                                                               xx        1. cambiar pikmin                                   xx"
		Escribir "xx                                                                               xx                                                            xx"
		Escribir "xx                                                                               xx                                                            xx"
		Escribir "xx                                                                               xx                                                            xx"
		Escribir "oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo"
		Leer accion
		segun accion Hacer
			1:
				si grupo_actual == 1 Entonces
					grupo_actual = 2 
				SiNo si grupo_actual == 2 Entonces
					grupo_actual = 1
				FinSi
			FinSi
		FinSegun
	Hasta Que z = 1
FinAlgoritmo

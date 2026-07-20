Algoritmo alfabeto_interactivo
	Definir opcion, totalLetras Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir letra Como Caracter
	Definir palabra Como Caracter
	Definir pronunciacion Como Caracter
	Definir categoria Como Caracter
	Definir descripcion Como Caracter
	Definir dificultad Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension letra[100]
	Dimension palabra[100]
	Dimension pronunciacion[100]
	Dimension categoria[100]
	Dimension descripcion[100]
	Dimension dificultad[100]
	Dimension estado[100]
	totalLetras <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_alfabeto_interactivo|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal alfabeto interactivo"
		Escribir "1) registrar letra"
		Escribir "2) editar letra"
		Escribir "3) eliminar letra"
		Escribir "4) buscar letra"
		Escribir "5) listar letras"
		Escribir "6) ver detalles de la letra"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_letra|--//
			//---------------------//
			1:
				Escribir "registrar letra"
				id[totalLetras + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalLetras + 1]
				Escribir "ingrese la letra:"
				Leer letra[totalLetras + 1]
				Escribir "ingrese la palabra de ejemplo:"
				Leer palabra[totalLetras + 1]
				Escribir "ingrese la pronunciación:"
				Leer pronunciacion[totalLetras + 1]
				Escribir "ingrese la categoría:"
				Leer categoria[totalLetras + 1]
				Escribir "ingrese la descripción:"
				Leer descripcion[totalLetras + 1]
				Escribir "ingrese la dificultad:"
				Leer dificultad[totalLetras + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalLetras + 1]
				totalLetras <- totalLetras + 1
				Escribir "letra registrada correctamente."
			//------------------//
			//--|editar_letra|--//
			//------------------//
			2:
				Escribir "editar letra"
				Si totalLetras = 0 Entonces
					Escribir "no hay letras registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalLetras Hacer
						Escribir id[i], " | ", letra[i], " | ", palabra[i], " | ", pronunciacion[i], " | ", categoria[i], " | ", descripcion[i], " | ", dificultad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la letra:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLetras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva letra:"
							Leer letra[i]
							Escribir "ingrese la nueva palabra:"
							Leer palabra[i]
							Escribir "ingrese la nueva pronunciación:"
							Leer pronunciacion[i]
							Escribir "ingrese la nueva categoría:"
							Leer categoria[i]
							Escribir "ingrese la nueva descripción:"
							Leer descripcion[i]
							Escribir "ingrese la nueva dificultad:"
							Leer dificultad[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "letra editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una letra con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_letra|--//
			//--------------------//
			3:
				Escribir "eliminar letra"
				Si totalLetras = 0 Entonces
					Escribir "no hay letras registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalLetras Hacer
						Escribir id[i], " | ", letra[i], " | ", palabra[i], " | ", pronunciacion[i], " | ", categoria[i], " | ", descripcion[i], " | ", dificultad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la letra:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLetras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalLetras Entonces
								Para j <- i Hasta totalLetras-1 Hacer
									id[j] <- id[j+1]
									letra[j] <- letra[j+1]
									palabra[j] <- palabra[j+1]
									pronunciacion[j] <- pronunciacion[j+1]
									categoria[j] <- categoria[j+1]
									descripcion[j] <- descripcion[j+1]
									dificultad[j] <- dificultad[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalLetras <- totalLetras-1
							Escribir "letra eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una letra con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_letra|--//
			//------------------//
			4:
				Escribir "buscar letra"
				Si totalLetras = 0 Entonces
					Escribir "no hay letras registradas."
				SiNo
					Escribir "ingrese el id de la letra:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLetras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", letra[i], " | ", palabra[i], " | ", pronunciacion[i], " | ", categoria[i], " | ", descripcion[i], " | ", dificultad[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una letra con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_letras|--//
			//-------------------//
			5:
				Escribir "listar letras"
				Si totalLetras = 0 Entonces
					Escribir "no hay letras registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalLetras Hacer
						Escribir id[i], " | ", letra[i], " | ", palabra[i], " | ", pronunciacion[i], " | ", categoria[i], " | ", descripcion[i], " | ", dificultad[i], " | ", estado[i]
					FinPara
				FinSi
			//---------------------------//
			//--|ver_detalles_letra|--//
			//---------------------------//
			6:
				Escribir "ver detalles de la letra"
				Si totalLetras = 0 Entonces
					Escribir "no hay letras registradas."
				SiNo
					Escribir "ingrese el id de la letra:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLetras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la letra"
							Escribir "id: ", id[i]
							Escribir "letra: ", letra[i]
							Escribir "palabra: ", palabra[i]
							Escribir "pronunciación: ", pronunciacion[i]
							Escribir "categoría: ", categoria[i]
							Escribir "descripción: ", descripcion[i]
							Escribir "dificultad: ", dificultad[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una letra con ese id."
					FinSi
				FinSi
				//--------------------------//
				//--|salir_menu_principal|--//
				//--------------------------//
			7:
				Escribir "gracias por utilizar el álbum musical."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo
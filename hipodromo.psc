Algoritmo Hipodromo
	
	Definir n11, n12, n13, n21, n22, n23, n31, n32, n33, n41, n42, n43, cuota, ahorros como entero;
	Definir resp, apuesta1, apuesta2, apuesta3, dineroInicial, numeroCarrera, caballoElegido1, caballoElegido2, caballoElegido3 como entero;	
	Definir repetirSiNo, respuestaSalir, respcarrera1, respcarrera2, respcarrera3 como texto;
	
	Repetir
		Escribir " ";
		Escribir "APUESTAS EN TU HIPÓDROMO";
		Escribir " ";
		Escribir "¿Con cuánto dinero quieres empezar?";
		Leer dineroInicial;
		ahorros <- dineroInicial;
		
		Escribir "CARRERA NÚMERO 1";
		n11 <- 0;
		n12 <- 0;
		n13 <- 0;
		n11 <- Azar(5)+1;
		Escribir "Big River: " n11 " a 1.";
		n12 <- Azar(5)+1;
		Escribir "Keeper Hill: " n12 " a 1.";
		n13 <- Azar(5)+1;
		Escribir "Blue Flight: " n13 " a 1.";
		
		Escribir "CARRERA NÚMERO 2";
		n21 <- 0;
		n22 <- 0;
		n23 <- 0;
		n21 <- Azar(5)+1;
		Escribir "Big River: " n21 " a 1.";
		n22 <- Azar(5)+1;
		Escribir "Keeper Hill: " n22 " a 1.";
		n23 <- Azar(5)+1;
		Escribir "Blue Flight: " n23 " a 1.";
		
		Escribir "CARRERA NÚMERO 3";
		n31 <- 0;
		n32 <- 0;
		n33 <- 0;
		n31 <- Azar(5)+1;
		Escribir "Big River: " n31 " a 1.";
		n32 <- Azar(5)+1;
		Escribir "Keeper Hill: " n32 " a 1.";
		n33 <- Azar(5)+1;
		Escribir "Blue Flight: " n33 " a 1.";
		
		Escribir "¿Quieres apostar algo en la primera carrera? Escribe -si- para hacerlo.";
		Leer respcarrera1;
		
		Si respcarrera1 = "si" Entonces
			Escribir " ";
			Escribir "Elige uno de los tres caballos (1-3).";
			Escribir " ";
			Leer caballoElegido1;
			
			Si caballoElegido1 < 1 O caballoElegido1 > 3 Entonces
				Repetir
					Escribir " ";
					Escribir "Debes escribir -1-, -2- ó -3-.";
					Escribir " ";
					Leer caballoElegido1;
				Hasta Que caballoElegido1 >= 1 Y caballoElegido1 <= 3;
			FinSi
			
			Si caballoElegido1 = 1 Entonces
				cuota = n11;
			FinSi
			Si caballoElegido1 = 2 Entonces
				cuota = n12;
			FinSi
			Si caballoElegido1 = 3 Entonces
				cuota = n13;
			FinSi
			
			Escribir " ";
			Escribir "¿Cuánto quieres apostar en la primera carrera?";
			Escribir " ";
			Leer apuesta1;
			Escribir " ";
			
			Si apuesta1 > ahorros O apuesta1 < 0 Entonces
				Escribir " ";
				Escribir "Tienes " ahorros ", así que no puedes apostar " apuesta1 ".";
				Escribir " ";
			SiNo
				n41 <- Azar(3)+1;
				Si n41 = caballoElegido1 Entonces
					Escribir " ";	
					Escribir "Bien hecho, apostaste por el caballo ganador.";
					Escribir " ";
					ahorros <- ahorros + (apuesta1 * cuota);
					Escribir " ";
					Escribir "Ahora tienes " ahorros " euros.";
				SiNo
					Si n41 != caballoElegido1 Entonces
						Escribir " ";	
						Escribir "Lo siento, apostaste por el caballo equivocado.";
						Escribir " ";
						ahorros <- ahorros - (apuesta1);
						Escribir " ";
						Escribir "Ahora tienes " ahorros " euros.";
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir "¿Quieres apostar algo en la segunda carrera? Escribe -si- para hacerlo.";
		Leer respcarrera2;
		
		Si respcarrera2 = "si" Entonces
			Escribir " ";
			Escribir "Elige uno de los tres caballos (1-3).";
			Escribir " ";
			Leer caballoElegido2;
			
			Si caballoElegido2 < 1 O caballoElegido2 > 3 Entonces
				Repetir
					Escribir " ";
					Escribir "Debes escribir -1-, -2- ó -3-.";
					Escribir " ";
					Leer caballoElegido2;
				Hasta Que caballoElegido2 >= 1 Y caballoElegido2 <= 3;
			FinSi
			
			Si caballoElegido2 = 1 Entonces
				cuota = n21;
			FinSi
			Si caballoElegido2 = 2 Entonces
				cuota = n22;
			FinSi
			Si caballoElegido2 = 3 Entonces
				cuota = n23;
			FinSi
			
			Escribir " ";
			Escribir "¿Cuánto quieres apostar en la primera carrera?";
			Escribir " ";
			Leer apuesta2;
			Escribir " ";
			
			Si apuesta2 > ahorros O apuesta2 < 0 Entonces
				Escribir " ";
				Escribir "Tienes " ahorros ", así que no puedes apostar " apuesta2 ".";
				Escribir " ";
			SiNo
				n42 <- Azar(3)+1;
				Si n42 = caballoElegido2 Entonces
					Escribir " ";	
					Escribir "Bien hecho, apostaste por el caballo ganador.";
					Escribir " ";
					ahorros <- ahorros + (apuesta2 * cuota);
					Escribir " ";
					Escribir "Ahora tienes " ahorros " euros.";
				SiNo
					Si n42 != caballoElegido2 Entonces
						Escribir " ";	
						Escribir "Lo siento, apostaste por el caballo equivocado.";
						Escribir " ";
						ahorros <- ahorros - (apuesta2);
						Escribir " ";
						Escribir "Ahora tienes " ahorros " euros.";
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir "¿Quieres apostar algo en la tercera carrera? Escribe -si- para hacerlo.";
		Leer respcarrera3;
		
		Si respcarrera3 = "si" Entonces
			Escribir " ";
			Escribir "Elige uno de los tres caballos (1-3).";
			Escribir " ";
			Leer caballoElegido3;
			
			Si caballoElegido3 < 1 O caballoElegido3 > 3 Entonces
				Repetir
					Escribir " ";
					Escribir "Debes escribir -1-, -2- ó -3-.";
					Escribir " ";
					Leer caballoElegido3;
				Hasta Que caballoElegido3 >= 1 Y caballoElegido3 <= 3;
			FinSi
			
			Si caballoElegido3 = 1 Entonces
				cuota = n31;
			FinSi
			Si caballoElegido3 = 2 Entonces
				cuota = n32;
			FinSi
			Si caballoElegido3 = 3 Entonces
				cuota = n33;
			FinSi
			
			Escribir " ";
			Escribir "¿Cuánto quieres apostar en la primera carrera?";
			Escribir " ";
			Leer apuesta3;
			Escribir " ";
			
			Si apuesta3 > ahorros O apuesta3 < 0 Entonces
				Escribir " ";
				Escribir "Tienes " ahorros ", así que no puedes apostar " apuesta3 ".";
				Escribir " ";
			SiNo
				n43 <- Azar(3)+1;
				Si n43 = caballoElegido3 Entonces
					Escribir " ";	
					Escribir "Bien hecho, apostaste por el caballo ganador.";
					Escribir " ";
					ahorros <- ahorros + (apuesta3 * cuota);
					Escribir " ";
					Escribir "Ahora tienes " ahorros " euros.";
				SiNo
					Si n43 != caballoElegido3 Entonces
						Escribir " ";	
						Escribir "Lo siento, apostaste por el caballo equivocado.";
						Escribir " ";
						ahorros <- ahorros - (apuesta3);
						Escribir " ";
						Escribir "Ahora tienes " ahorros " euros.";
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir "¿Quieres volver a jugar una partida de 3 carreras?";
		Leer respuestaSalir;
		
	Hasta Que respuestaSalir != "si";
	
FinAlgoritmo

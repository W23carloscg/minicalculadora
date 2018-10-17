algoritmo minicalculadora
	
	Definir num_a, num_b, resultado_suma, resultado_resta, resultado_multiplicacion Como Real
	Definir resultado_division Como Real
	Definir opcion como Entero
	
	num_a<-0
	num_b<-0
	resultado_resta<-0
	resultado_suma<-0
	resultado_multiplicacion<-0
	resultado_division<-0
	
	Escribir "Introducir numero a"
	leer num_a
	
	Escribir "Introducir numero b"
	leer num_b
	
	Escribir "Introducir 1(Suma)"
	Escribir "Introducir 2(Resta)"
	Escribir "Introducir 3(Multiplicacion)"
	Escribir "Introducir 4(Division)"
	
	leer opcion
	
	si (opcion = 1) entonces
		
		resultado_suma = num_a + num_b
		Escribir " La suma de " , num_a, " y de " , num_b, " es " , resultado_suma
		
	sino
		
		si (opcion = 2) entonces
			
			resultado_resta = num_a - num_b
			Escribir "La resta de ", num_a, " y de " , num_b, " es " , resultado_resta
			
		sino
			
		finsi
		
		si (opcion = 3) entonces
			
			resultado_multiplicacion = num_a * num_b
			Escribir "La multiplicacion de ", num_a, " y de " , num_b, " es " , resultado_multiplicacion
			
		sino
			
		finsi
		
		si (opcion = 4) entonces
			
			si num_b>0.0 entonces
				
				resultado_division = num_a / num_b
				Escribir "La division de ", num_a, " y de " , num_b, " es " , resultado_division
				
			sino
				
				Escribir "No se puede divir por cero"
				Escribir "Por favor vuelva a introducir como divisor un numero que sea mayor que 0.0"
				
				Escribir "Introducir numero a"
				leer num_a
				
				Escribir "Introducir numero b"
				leer num_b
				
				Escribir "Introducir 1(Suma), 2(Resta), 3(Multiplicacion), 4(Division)"
				leer opcion
				
				resultado_division = num_a / num_b
				Escribir "La division de ", num_a, " y de " , num_b, " es " , resultado_division
				
			finsi
			
		finsi
		
	finsi
	
FinAlgoritmo
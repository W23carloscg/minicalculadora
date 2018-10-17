algoritmo minicalculadora
	
	Definir num_a, num_b, resultado_suma, resultado_resta como Real
	Definir opcion como Entero
	
	num_a<-0
	num_b<-0
	resultado_resta<-0
	resultado_suma<-0
	
	Escribir "Introducir numero a"
	leer num_a
	
	Escribir "Introducir numero b"
	leer num_b
	
	Escribir "Introducir 1(Suma), 2(Resta)"
	leer opcion
	
	si (opcion = 1) entonces
		
		resultado_suma = num_a + num_b
		Escribir " La suma de " , num_a, " y de " , num_b, " es " , resultado_suma
		
	sino
		
		si (opcion = 2) entonces
			
			resultado_resta = num_a - num_b
			Escribir "La resta de ", num_a, " y de " , num_b, " es " , resultado_resta
			
		sino
			
			Escribir "Esa operación no esta permitida"
			
		finsi
		
	finsi
	
FinAlgoritmo
algoritmo minicalculadora
	
	Definir num_a, num_b, num_res, num_mul como Real
	Definir opcion como Entero
	
	num_a<-0
	num_b<-0
	num_res<-0
	
	Escribir "Introducir numero a"
	leer num_a
	
	Escribir "Introducir numero b"
	leer num_b
	
	Escribir "Introducir 1(suma), 2(resta), 3(multiplicacion)"
	leer opcion
	
	si (opcion =1) entonces
		
		num_res = num_a + num_b
		
		Escribir "La suma de ", num_a," y de ", num_b," es ",num_res
		
	sino
		
		si (opcion = 2) entonces
			
			num_res = num_a - num_b
			
			Escribir "La resta de ", num_a," y de ", num_b," es ",num_res
		sino
			
			si (opcion = 3) entonces
				
				num_mul = num_a * num_b
				Escribir "La multiplicacion de ", num_a," y de ", num_b," es ",num_mul
				
			sino
				
				Escribir "Esa operación no esta permitida"
				
			finsi	
			
		finsi
		
	finsi
	
Fin Algoritmo


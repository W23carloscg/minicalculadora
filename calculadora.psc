// Calculadora con Procedimientos y Funciones 

// Carlos Castillo Galvez

//Funcion que muestra el menu -------------------------------------------------------------------------------------------------

	SubProceso op = CapturaOpcion()
		
		Definir op Como Entero
		
		Escribir "Pulsa 1 (Suma)"
		Escribir "Pulsa 2 (Resta)"
		Escribir "Pulsa 3 (Multiplicación)"
		Escribir "Pulsa 4 (División)"
		Escribir "Pulsa 5 (Ecuacion de 1º Grado ax+b=0)"
		Escribir "Pulsa 6 (Ecuacion de 2º Grado ax^2+bx+c=0)"
		
		leer op
		
	Fin Funcion

//Funcion Suma ----------------------------------------------------------------------------------------------------------------

	SubProceso ret = Suma ( a,b )
		
		Definir ret Como Entero
		ret = a + b
		
	Fin Funcion

//Funcion Resta ---------------------------------------------------------------------------------------------------------------

	SubProceso ret = Resta ( a,b )
		
		ret = a - b
		
	Fin Funcion

//Funcion Multiplicacion ------------------------------------------------------------------------------------------------------

	SubProceso ret = Multiplicacion ( a,b )
		
		ret = a * b
		
	Fin Funcion

//Funcion Division ------------------------------------------------------------------------------------------------------------

	SubProceso ret = Division ( a,b )
		
		ret = a / b
		
	Fin Funcion

//Funcion Ecuacion 1º Grado ---------------------------------------------------------------------------------------------------

	SubProceso ret = Ecuacion1Grado ( a,b )
		
		ret = -1 * b / a	
		
	Fin Funcion

//Funcion Ecuacion 2º Grado ---------------------------------------------------------------------------------------------------

	SubProceso ret = Ecuacion2Grado ( a,b,c, x_1 por referencia , x_2 por referencia ) 
		
		x_1 = ((-b)-rc(b^2-4*a*c))/( 2*a)
		x_2 = ((-b)+rc(b^2-4*a*c))/( 2*a)
		
	FinSubProceso

//Procedimiento de la calculadora ---------------------------------------------------------------------------------------------

Proceso MiniCalculadora
	
	//Definir las variables
	
	Definir a Como Entero
	Definir b Como Entero
	Definir c Como Entero
	Definir resultado Como Entero
	Definir op  Como Entero
	
	//Inicializar las variables
	
	a = 0
	b = 0
	c = 0
	resultado = 0 
	op = 0
	
	//Fin de las variables inicializadas
	
	op = CapturaOpcion()											//Llama a la funcion que nos informa de las opciones
	
	si op>=1 y op<=6 Entonces										//Control de las opciones que poonga el usuario
		
		Escribir "Introduce el valor a"
		leer a
		
		Escribir "Introduce el valor b"
		Leer b
		
		Si op=1 Entonces											// 1º Opcion Suma
			
			resultado = Suma( a,b )									//Llama a la funcion Suma
			Escribir "La suma de " a " y " b " es " resultado
			
		SiNo
			
			Si op=2 Entonces										// 2º Opcion Resta
				
				resultado = Resta( a,b )							//Llama a la funcion Resta
				Escribir "La resta de " a " y " b " es " resultado
				
			SiNo
				
				Si op=3 Entonces									// 3º Opcion Multiplicacion
					
					resultado = Multiplicacion( a,b )				//Llama a la funcion multiplicacion
					Escribir "La multiplicacion de " a " y " b " es " resultado
					
				SiNo
					
					
					Si op=4 Entonces								// 4º Opcion Division
						
						Si b > 0.0 entonces							// Comprobacion divisor mayor que 0.0
							
							resultado = Division ( a,b )			// Llama a la funcion Division
							
							Escribir "La division de " a " y " b " es " resultado
							
						SiNo										// Control para divisor sea mayor que 0.0
							
							Escribir "No se puede divir por cero"
							Escribir "Vuelva a introducir como divisor un numero mayor que 0.0"
							
							Escribir "Introducir numero dividendo"
							leer a
							
							Escribir "Introducir numero divisor"
							leer b
							
							resultado = Division ( a,b )			// Llama a la funcion Division	
							
							Escribir "La division de " a " y " b " es " resultado
							
						FinSi
						
					SiNo
						
						Si op=5 Entonces							// 5º Opcion Ecuacion de 1º Grado 
							
							Si a > 0.0 entonces						// Comprobacion divisor mayor 0.0
								
								resultado = Ecuacion1Grado( a,b )	// Llama a la funcion Ecuacion 1º Grado
								
								Escribir "El resultado de la ecuacion de 1º Grado es " resultado 
								
							SiNo									// Control para divisor sea mayor que 0.0
								
								Escribir "No se puede divir por cero"
								Escribir "Vuelva a introducir como divisor un numero mayor que 0.0"
								
								Escribir "Introducir el valor de a"
								leer a
								
								Escribir "Introducir el vlaor de b"
								leer b
								
								resultado = Ecuacion1Grado( a,b )	// Llama a la funcion Ecuacion 1º Grado
								
								Escribir "El resultado de la ecuacion de 1º Grado es " resultado 
								
							FinSi
							
						SiNo
							
							Si op=6 Entonces						// 6º Opcion Ecuacion de 2º Grado
								
								Escribir "Introduce el valor c" 	// Recoge el valor de c
								Leer c
								
								si b^2-4*a*c=0 Entonces 			// Comprobacion si lo que hay arriba en 
																	// la raiz de la fracción da 0
									
									r<-(-b)/(2*a)					// Llama a la funcion Ecuacion 2º Grado
									
									Escribir "Raiz 1 = Raiz 2: " r 	
									
								SiNo
									
									resultado = Ecuacion2Grado ( a,b,c, x_1, x_2) // Llama a la funcion Ecuacion 2º Grado
									
									Escribir "Raiz 1: " x_1 		// Llama al primer resultado de la funcion Ecuacion 2º Grado
									Escribir "Raiz 2: " x_2			// Llama al segundo resultado de la funcion Ecuacion 2º Grado
									
								FinSi
								
							FinSi
							
						FinSi
							
					FinSi
						
				FinSi
					
			FinSi
				
		FinSi
			
		Escribir "Fin del Programa"
		
	FinSi
	
	Escribir "Opcion no permitida"
	
FinProceso
//Vcrear una app que simule un sistema de un cajero automatico
//1- tres intentos, al tercer intento bloquear la trajeta
//2- Consultar saldo
//3- retirar dinero
//4- deposito de dinero
//5- salir
Algoritmo CajeroAutomatico
	Definir saldo, deposito, ewtiro Como Real
	Definir opcion, intentos como entero
	Definir pin, pinCorrecto Como Entero
	
	saldo=10000
	pinCorrecto=1234
	intentos=0
	
	//validar el acceso por medio del pin
	Mientras intentos<3 Hacer
		Escribir Sin Saltar"Ingrese su PIN: "
		leer pin
		Si pin == pinCorrecto Entonces
			Escribir "Acceo concedido!!!"
			Repetir
				Escribir "======================="
				Escribir "MENÚ PRINCIPAL"
				Escribir "1- Consultar Saldo"
				Escribir "2- Depositar Dinero"
				Escribir "3- Retirar dinero"
				Escribir "4- Salir"
				Escribir "======================="
				Escribir Sin Saltar "Seleccione una opcion : [ ]"
				leer opcion 
				Segun opcion Hacer
					1:
						Escribir "Su saldo actual es: Q", saldo
						Escribir "Presione una tecal para volver al menu"
						Esperar Tecla
					2:
						Escribir Sin Saltar "Ingrese el monto a depositar: Q"
						leer deposito 
						saldo=saldo+deposito
						Escribir "Deposito exitoso, saldo nuevo: Q", saldo
						Escribir "Presione una tecal para volver al menu"
						Esperar Tecla
						
					3:
						Escribir "Ingrese el monto a retirar: Q"
						leer retiro
						
						si retiro <= saldo Entonces
							saldo = saldo - retiro
							Escribir "Retiro exitoso, nuevo saldo: Q", saldo
						SiNo
							Escribir "Fondos insuficientes"
							
						FinSi
					4:
						Escribir "Gracias por usar el cajero"
					De Otro Modo:
						Escribir "Opcion invalida"
				Fin Segun
			Hasta Que opcion=4
			// terminar mi programa
			intentos=3
		SiNo
			intentos=intentos+1
			Escribir "PIN incorecto, intento:", intentos, "de 3"
			
		Fin Si
	Fin Mientras
	//Bloqueo de la tarjeta
	si intentos ==3 Entonces
		Escribir "Tarjeta bloqueada"
		Escribir "Demasiados intentos fallidos"
	FinSi
	si intentos==5 Entonces
		Escribir ()
	FinSi
	Escribir "presiona una tecla para salir del sistema"
	Esperar Tecla
FinAlgoritmo

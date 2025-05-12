Proceso ConsumoAgua
    Definir consumo, total, promedio Como Real
    Definir i, alto, adecuado, mayor, menor, posMayor, posMenor, opcion Como Entero
    Definir cargado Como Logico
    cargado <- FALSO
	
    Repetir
        Escribir "1. Registrar consumos"
        Escribir "2. Contar consumo alto/adecuado"
        Escribir "3. Mayor y menor consumo"
        Escribir "4. Promedio"
        Escribir "5. Salir"
        Leer opcion
		//
        Segun opcion Hacer
            1://
                Para i <- 1 Hasta 30
                    Escribir "Consumo hogar ", i, ":"
                    Leer consumo
                FinPara
                cargado <- VERDADERO
            2:
                Si cargado Entonces
                    alto <- 0; adecuado <- 0
                    Para i <- 1 Hasta 30
                        Si consumo > 20 Entonces
                            alto <- alto + 1
                        Sino
                            adecuado <- adecuado + 1
                        FinSi
                    FinPara
                    Escribir "Alto: ", alto, " Adecuado: ", adecuado
                Sino
                    Escribir "Primero registre los datos."
                FinSi
            3:
                Si cargado Entonces
                    mayor <- consumo; menor <- consumo
                    posMayor <- 1; posMenor <- 1
                    Para i <- 2 Hasta 30
                        Si consumo > mayor Entonces
                            mayor <- consumo
                            posMayor <- i
                        FinSi
                        Si consumo < menor Entonces
                            menor <- consumo
                            posMenor <- i
                        FinSi
                    FinPara
                    Escribir "Mayor consumo hogar ", posMayor, ": ", mayor
                    Escribir "Menor consumo hogar ", posMenor, ": ", menor
                Sino
                    Escribir "Primero registre los datos."
                FinSi
            4:
                Si cargado Entonces
                    total <- 0
                    Para i <- 1 Hasta 30
                        total <- total + consumo
                    FinPara
                    promedio <- total / 30
                    Escribir "Promedio mensual: ", promedio
                Sino
                    Escribir "Primero registre los datos."
                FinSi
        FinSegun
    Hasta Que opcion = 5
FinProceso


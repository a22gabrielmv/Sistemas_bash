function esPrimo($x) {
    if(($x % 2 -ne 0) -and ($x % 3 -ne 0) -and ($x % 5 -ne 0) -or ($x -eq 2) -or ($x -eq 3) -or ($x -eq 5)){
        $resultado="El numero $($x) es primo"
    }
    else{
        $resultado="El numero $($x) no es primo"
    }
    return $resultado
}

$opcion_menu=-1
while($opcion_menu -ne 0){
    $x=-1
    $num1=0
    $num2=0
    $num3=0
    $alea=0
    $cont=0
    $nums_arr=-1
    
    Write-Host "=============================="
    Write-Host "ELIJE UNA OPCION"
    Write-Host "=============================="
    Write-Host "1.COMPROBAR PRIMO"
    Write-Host "2.NUMEROS ALEATORIOS"
    Write-Host "3.LISTA ORDENADA"
    Write-Host "4.FACTORIZAR NUMERO"
    Write-Host "0.SALIR"
    Write-Host "=============================="

    $opcion_menu=Read-Host $opcion_menu

    if($opcion_menu -eq 1){
        Write-Host "Dime el numero para comprobar si es primo:"
        $x=Read-Host $x
        Write-Host $(esPrimo $x)
    }

    if($opcion_menu -eq 2){
        $eleccion=-1
        Write-Host "Dime el indice minimo:"
        $num1=Read-Host $num1
        Write-Host "Dime el indice maximo:"
        $num2=Read-Host $num2
        [int] $alea = Get-Random -Minimum $num1 -Maximum $num2
        while($eleccion -ne $alea){
            Write-Host "Dime el numero que crees que es:"
            [int] $eleccion= Read-Host $eleccion
            $cont+=1
            if($eleccion -lt $alea){
                Write-Host "El numero es mayor"
            }
            if($eleccion -gt $alea){
                Write-Host "El numero es menor"
            }
            if($eleccion -eq $alea){
                Write-Host "Enhorabuena, encontraste el numero indicado"
                $alea=0
                $eleccion=0
            }
        }
        Write-Host "Intentos utilizados: $($cont)"
    }

    if($opcion_menu -eq 3){
        $lista = New-Object System.Collections.ArrayList

        while($nums_arr -ne 0){
            Write-Host "Dime un numero:"
            $nums_arr=Read-Host $nums_arr
            if($nums_arr -ne 0){
                $lista.add([long] $nums_arr) > $null
            }
        }

        $lista = $lista | Sort-Object
        Write-Host "Lista ordenada: [$($lista)]"
    }

    if($opcion_menu -eq 4){
        $lista1 = New-Object System.Collections.ArrayList
        $listaf = New-Object System.Collections.ArrayList
        $tamano=0
        $contador_potencia=0

        $divisor=2
        Write-Host "Dime el numero que quieres factorizar:"
        $num3 = Read-Host $num3
        $copia_num3 = $num3

        while($num3 -ne 1) {
            if($num3 % $divisor -eq 0){
                $tamano++
                $lista1.add($divisor) > $null
                $num3 = $num3 / $divisor
            }
            else {
                $divisor += 1
            }
        }

        $lista_potencia = $lista1.ToArray()
        $print=0
        for ($i=0; $i -lt $tamano; $i++){
            $contador_potencia++
            if($lista_potencia[$i] -ne $lista_potencia[$i+1]){
                if($print -eq 0){
                    $listaf.add("$($lista_potencia[$i])^$($contador_potencia)") > $null
                    $print++
                }
                else{
                    $listaf.add("* $($lista_potencia[$i])^$($contador_potencia)") > $null
                }
                $contador_potencia=0
            }
        }

        Write-Host "$($copia_num3) = $($listaf)"
    }
}
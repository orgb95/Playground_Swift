import Swift

/*
Escribe dos funciones llamadas sumaRecursiva y
sumaIterativa que calculen la suma de los primeros N números naturales. La
primera función debe ser recursiva y la segunda iterativa. Prueba ambas funciones
con un valor de ejemplo.
*/

func sumaRecursiva(n : Int) -> Int{
    if (n == 0){
        return 0
    }else {
        return (n + sumaRecursiva( n : (n-1)))
    }
}

func sumaIterativa(n : Int) -> Int{
    var suma = 0

    for i in 1...n{
        suma += i   
    }

    return suma
}

var resultadoRecursivo = sumaRecursiva(n : 10)
var resultadoIterativo = sumaIterativa(n : 10)

print("Suma Recursiva: ", resultadoRecursivo)
print("Suma Iterativa: ", resultadoIterativo)

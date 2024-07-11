import Swift

/*
Escribe una función llamada ordenarPorSeleccion que acepte un
array de enteros y lo ordene utilizando el algoritmo de ordenamiento por selección.
Implementa la lógica del algoritmo y prueba la función con un array de ejemplo.

*/

func ordenarPorSeleccion(ar: inout [Int]) {
    let n = ar.count
    for i in 0..<n-1 {
        var minIndice = i
        
        for j in i+1..<n {
            if ar[j] < ar[minIndice] {
                minIndice = j
            }
        }
        
        if minIndice != i {
            ar.swapAt(i, minIndice)
        }
    }
}

var numeros = [64, 25, 12, 22, 11]
print("Array original: \(numeros)")
ordenarPorSeleccion(ar: &numeros)
print("Array ordenado: \(numeros)")

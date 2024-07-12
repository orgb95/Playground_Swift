/*
Escribe una función llamada busquedaBinariaRecursiva que
implemente el algoritmo de búsqueda binaria de manera recursiva. La función
debe aceptar un array ordenado de enteros, el valor a buscar, y los índices de
inicio y fin. Devuelve la posición del valor encontrado o nil si no se encuentra.
Prueba la función con un array de ejemplo.
*/

func busquedaBinariaRecursiva(array: [Int], valor: Int, inicio: Int, fin: Int) -> Int? {
    if inicio > fin {
        return nil
    }

    let medio = (inicio + fin) / 2

    if array[medio] == valor {
        return medio
    } else if array[medio] < valor {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: medio + 1, fin: fin)
    } else {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: inicio, fin: medio - 1)
    }
}

let numerosOrdenados = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
if let posicion = busquedaBinariaRecursiva(array: numerosOrdenados, valor: 5, inicio: 0, fin: numerosOrdenados.count - 1) {
    print("El valor se encuentra en la posicion: \(posicion)")
} else {
    print("El valor no se encuentra en el array")
}

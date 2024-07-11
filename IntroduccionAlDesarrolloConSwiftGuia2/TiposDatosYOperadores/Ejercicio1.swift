import Swift

/*
Instrucción: Escribe una función llamada calcularEstadisticas que acepte
un array de enteros y devuelva una tupla con la media, mediana y moda del array.
Implementa la lógica para calcular cada una de estas estadísticas y prueba la
función con un array de ejemplo.
*/
func calcularEstadisticas(numeros: [Int]) -> (media: Double, mediana: Double, moda: [Int])? {
    guard !numeros.isEmpty else {
        return nil
    }
    
    // Calcular la media
    let suma = numeros.reduce(0, +)
    let media = Double(suma) / Double(numeros.count)
    
    // Calcular la mediana

    let numerosOrdenados = numeros.sorted()
    let mitad = numeros.count / 2
    let mediana: Double
    if numeros.count % 2 == 0 {
        mediana = Double(numerosOrdenados[mitad - 1] + numerosOrdenados[mitad]) / 2.0
    } else {
        mediana = Double(numerosOrdenados[mitad])
    }
    
    // Calcular la moda
    var frecuencia: [Int: Int] = [:]
    for numero in numeros {
        frecuencia[numero, default: 0] += 1
    }
    
    let maxFrecuencia = frecuencia.values.max() ?? 0
    let moda = frecuencia.filter { $0.value == maxFrecuencia }.keys.sorted()
    
    return (media, mediana, moda)
}

if let estadisticas = calcularEstadisticas(numeros: [1, 2, 2, 3, 4, 4, 4, 5]) {
    print("Media: ", estadisticas.media)
    print("Mediana: ", estadisticas.mediana)
    print("Moda: ", estadisticas.moda)
} else {
    print("La lista de números está vacía.")
}
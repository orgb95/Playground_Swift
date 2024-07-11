import Swift 

/*
Escribe dos funciones, sumaMatrices y multiplicarMatrices,
que acepten dos matrices (arrays de arrays de enteros) y devuelvan la matriz
resultado de la suma y la multiplicación, respectivamente. Valida que las
dimensiones de las matrices sean compatibles para cada operación. Prueba las
funciones con matrices de ejemplo.
*/

func multiplicarMatrices (matrizA : [[Int]], matrizB : [[Int]]) -> [[Int]]? {
    let filasA = matrizA.count
    let columnasA = matrizA[0].count
    let filasB = matrizB.count
    let columnasB = matrizB[0].count
    
    if columnasA != filasB {
        print("Las matrices no pueden ser multiplicadas")
        return nil
    }
    
    var matrizResultado = Array(repeating: Array(repeating: 0, count: columnasB), count: filasA)
   
    for i in 0 ..< filasA{
        for j in 0 ..< columnasB {
            for k in 0 ..< columnasA {
                matrizResultado[i][j] += (matrizA[i][k] * matrizB[k][j])
            }
        }
    }
    return matrizResultado
}

if let producto = multiplicarMatrices(matrizA: [[1, 2], [3, 4]], matrizB: [[5, 6], [7, 8]]) {
    print("Producto de matrices: ", producto)
} else {
    print("No se pudo realizar la multiplicación de matrices.")
}
import Swift

/*
Crear una clase Calculadora con funciones estáticas sumar y restar. 
Implementar una función que acepte un array de enteros y use las funciones estáticas 
para calcular la suma y la resta total de los elementos del array.
*/

class Calculadora {
  static func sumar (a : Int, b : Int) -> Int{
    return a + b
  }
  static func restar (a : Int, b : Int) -> Int{
    return a - b
  }
}

func calcularSumaYRestaTotales (numeros : [Int]) -> (sumaTotal : Int, restaTotal : Int){
  var sumaTotal = 0
  var restaTotal = 0

  for numero in numeros {
    sumaTotal = Calculadora.sumar(a : sumaTotal, b : numero)
    restaTotal = Calculadora.restar(a : restaTotal, b : numero)
  }

  return (sumaTotal, restaTotal)
} 

var numeros = [1, 2, 3, 4, 5]
var resultado = calcularSumaYRestaTotales(numeros : numeros)
print("La suma total es: \(resultado.sumaTotal)")
print("La resta total es: \(resultado.restaTotal)")
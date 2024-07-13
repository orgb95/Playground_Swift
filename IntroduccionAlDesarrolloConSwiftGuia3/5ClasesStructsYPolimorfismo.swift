import Swift

//Crear un protocolo Empleado con un método calcularSalario. Implementar una clase EmpleadoBase y una 
//estructura EmpleadoContrato que conformen al protocolo Empleado. Crear una función que acepte un array de Empleado y calcule el 
//salario total de todos los empleados.

protocol Empleado{
  func calcularSalario() -> Double
}

class EmpleadoBase : Empleado { // Tipo con semantica de referencia implica pasar la instancia de un objeto A a un objeto B y visceversa
    var salarioBase : Double

  init (salarioBase : Double){
    self.salarioBase = salarioBase
  }

  func calcularSalario() -> Double {
    return salarioBase
  }
}

// Todos tipo primitivo es semantica de valor
struct EmpleadoContrato : Empleado{ // Tipo con semantica de valor
  var tarifaHora : Double
  var horasTrabajadas : Double

  func calcularSalario() -> Double {
    return tarifaHora * horasTrabajadas
  }
}

func calcularSalarioTotal (empleados : [Empleado]) -> Double {
  var salarioTotal = 0.0

  for empleado in empleados{
    salarioTotal += empleado.calcularSalario() 
  }

  return salarioTotal
}

var empleadoBase = EmpleadoBase(salarioBase: 3000.0)
var empleadoContrato = EmpleadoContrato(tarifaHora: 20.0, horasTrabajadas: 100.0)
var empleados : [Empleado] = [empleadoBase, empleadoContrato]

var salarioTotal = calcularSalarioTotal(empleados: empleados)
print("El salario total de los empleados es: \(salarioTotal)")
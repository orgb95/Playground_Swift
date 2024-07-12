import Swift

class Coche {
    var marca: String
    var modelo: String
    var año: Int
    
    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    func describir() -> String {
        return "Coche: \(marca) \(modelo), Año: \(año)"
    }
}

let miCoche = Coche(marca: "Toyota", modelo: "Corolla", año: 2020)
print(miCoche.describir())

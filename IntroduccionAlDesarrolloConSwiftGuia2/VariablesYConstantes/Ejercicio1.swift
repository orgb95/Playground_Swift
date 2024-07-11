import Swift

func ClacularAreaYPerimetro(ancho : Double, alto : Double) -> (area : Double, perimetro : Double){
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)

    return (area, perimetro)
}

let resultado = ClacularAreaYPerimetro(ancho : 5 , alto :  10)
print("Area: ", resultado.area)
print("Perimetro: ", resultado.perimetro)
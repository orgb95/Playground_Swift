import Swift

func calcularAreaTriangulo (a : Double, b : Double, c : Double) -> Double?{
    let condicion = (a <= 0) || (b <= 0) || (c <= 0) || (a + b <= c) || (a + c <= b) || (b + c <= a)

    if (condicion == true){
        print("Los lados ingresados no forman un triangulo valido")
        return nil
    }

    var s = (a + b + c) / 2 
    var area = sqrt(s * (s - a) * (s - b) * (s-c))
    return area
}

var area = calcularAreaTriangulo(3 , 4, 5)

if (area != nil){
    print("El área del triángulo es: ",area)
} else {
    print("Datos invalidos para los lados del triangulo")
}

import Swift

//Implementar una enumeración EstadoPedido con casos procesando, enviado, y entregado. 
//Crear un protocolo NotificacionPedido con un método notificarCambioDeEstado. 
//Implementar una clase Pedido que tenga una propiedad estado de tipo EstadoPedido y una propiedad delegado de tipo NotificacionPedido. 
//Crear una función que cambie el estado del pedido y notifique al delegado.


//Enum EstadoPedido con sus casos detalla el estado del pedido (procesando, enviando o entregado)
enum EstadoPedido { 

    case procesando

    case enviando

    case entregado

}

// Protocolo NotificacionPedido, su funcion es notificar el cambio del estado del pedido
protocol NotificacionPedido {

    func NotificarCambioDeEstado (nuevoEstado : EstadoPedido) -> Void

}

//Clase pedido
class Pedido {

    var estado : EstadoPedido //La variable estado esta implementada al enum EstadoPedido

    var delegado : NotificacionPedido? //Delegado esta implementado al protocolo NotificacionPedido

    init (estado : EstadoPedido){ //Construccion de un init para inicializar el estado del pedido 

        self.estado = estado

    }

    // funcion cambiarEstado recibe un nuevoEstado implementado al enum EstadoPedido, si la variable delegado es nula entonces se 
    //Notifica un nuevo cambio de estado con el protocolo NotificarCambioDeEstado
    func cambiarEstado (nuevoEstado : EstadoPedido){ 

        self.estado = nuevoEstado

        if delegado != nil {

            delegado?.NotificarCambioDeEstado(nuevoEstado: estado)

        }

    }

}



class GestorPedido : NotificacionPedido{

    func NotificarCambioDeEstado(nuevoEstado: EstadoPedido) {

        print("El estado del pedido ha cambiado a: ", nuevoEstado)

    }

}

var gestor = GestorPedido()

var pedido = Pedido(estado: EstadoPedido.procesando)

pedido.delegado = gestor

pedido.cambiarEstado(nuevoEstado: EstadoPedido.entregado)
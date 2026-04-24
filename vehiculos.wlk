import ciudades.*

object alambiqueVeloz {
    var combustible = 300
    
    method combustible() = combustible
    method velocidadMaxima() = 120
    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario()
    }
}
object chatarraEspecial {
    var combustible = 300
    
    method combustible() = combustible
    method velocidadMaxima() = 100
    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario()
    }
}
object antiguallaBlindada {
    var combustible = 300
    
    method combustible() = combustible
    method velocidadMaxima() = 70
    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario()
    }
}
object superConvertible {
    var combustible = 300
    const velocidadMaxima = 200 //No olvidar modificar el const
    var formaActual = artemis

    method formaActual() = formaActual
    method combustible() = combustible
    method velocidadMaxima() = velocidadMaxima
    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario()
    }
    method cambiarForma(forma) {
        formaActual = forma
    }
}
//Objetos superConvertible

object artemis {
  
}
object autoDeportivo {
  
}
object bicicleta {
    
}
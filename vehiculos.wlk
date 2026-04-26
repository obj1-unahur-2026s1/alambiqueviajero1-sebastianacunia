import ciudades.*

object alambiqueVeloz {
    var combustible = 300
    
    method combustible() = combustible
    method velocidadMaxima() = 120
    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario()
    }
    method cargarCombustible(cantidad) {
        combustible += cantidad
    }
}
object chatarraEspecial {
    var combustible = 300
    var partesTiradasALaRuta = 0
    
    method combustible() = combustible
    method velocidadMaxima() = 100
    method partesTiradasALaRuta() = partesTiradasALaRuta

    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario() - partesTiradasALaRuta * 0.5
    }
    method cargarCombustible(cantidad) {
        combustible += cantidad
    }
    method tirarParteALaRuta() {
        partesTiradasALaRuta += 1
    }
}
object antiguallaBlindada {
    var combustible = 300
    var cantidadMunicion = 30.max(20)

    method combustible() = combustible
    method velocidadMaxima() = 70
    method cantidadMunicion() = cantidadMunicion

    method combustibleUsadoEnViajeA(ciudad) {
        combustible -= ciudad.combustibleNecesario() + self.cantidadMunicion() * 0.5
    }
    method cargarCombustible(cantidad) {
        combustible += cantidad
    }
    method cargarMunicion(cantidad) {
        cantidadMunicion += cantidad
    }
    method descargarMunicion(cantidad) {
        cantidadMunicion -= cantidad
    }
    method disparar() {
        cantidadMunicion -= 1
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
    method cargarCombustible(cantidad) {
        self.formaActual().combustible() + cantidad
    }
    method cambiarForma(forma) {
        formaActual = forma
    }
}
//Objetos superConvertible

object artemis {

    var combustible = 4000

    method combustible() = combustible
    method velocidadMaxima() = 4000

}
object autoDeportivo {
    
    var combustible = 300

    method combustible() = combustible
    method velocidadMaxima() = 200

}
object motobici {
    var combustible = 70

    method combustible() = combustible
    method velocidadMaxima() = 30
}
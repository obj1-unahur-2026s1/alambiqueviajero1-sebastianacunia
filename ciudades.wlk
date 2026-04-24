import recuerdos.*
import elAlambiqueViajero.*
object paris {

    method recuerdoComprado() = recuerdoParis
    method combustibleNecesario() = 200
    method puedoViajarEn(vehiculo) = vehiculo.combustible() >= self.combustibleNecesario()  
}
object buenosAires {

    method recuerdoComprado() = recuerdoBsAs
    method combustibleNecesario() = 70
    method velocidadMaximaNecesaria() = 100
    method puedoViajarEn(vehiculo) = vehiculo.velocidadMaxima() >= self.velocidadMaximaNecesaria()
}
object bagdad {
    var añoActual = 2026

    method añoActual() = añoActual
    method recuerdoComprado() = recuerdoBagdad
    method combustibleNecesario() = 300
    method puedoViajarEn(vehiculo) = true

    method sumarAños(cantidad) {
        añoActual += cantidad
    }
    method restarAños(cantidad) {
      añoActual -= cantidad
    }


}
object lasVegas {

    method recuerdoComprado() = recuerdoLasVegas
    method combustibleNecesario() = 120
    method recuerdoHomenajeado() = casa.recuerdoDestacado()
    method puedoViajarEn(vehiculo) = self.recuerdoHomenajeado().ciudadCorrespondiente().puedoViajarEn(vehiculo)
}
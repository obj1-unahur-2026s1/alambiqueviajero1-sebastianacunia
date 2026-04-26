
import recuerdos.*
import vehiculos.*
object luke {
    var vehiculoActual = alambiqueVeloz

    method recuerdoUltimoLugarVisitado() = casa.recuerdoActual().formaActual()
    method cantidadLugaresVisitados() = casa.recuerdosTirados() + 1
    method vehiculoActual() = vehiculoActual

    method irseDeViaje(ciudad,vehiculo) {
        if (ciudad.puedoViajarEn(self.vehiculoActual())) {
            casa.cambiarRecuerdo(ciudad)
        }
    }
    method cambiarVehiculo(vehiculo) {
        vehiculoActual = vehiculo
    }
}
object casa {
    var recuerdoActual = recuerdoParis
    var recuerdosTirados = 0

    method recuerdoActual() = recuerdoActual
    method recuerdosTirados() = recuerdosTirados

    method cambiarRecuerdo(ciudadVisitada) {
        recuerdoActual = ciudadVisitada.recuerdoComprado()
        recuerdosTirados += 1
    }
}


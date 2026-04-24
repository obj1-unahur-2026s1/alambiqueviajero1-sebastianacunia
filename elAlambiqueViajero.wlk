
import recuerdos.*
import vehiculos.*
object luke {
    var vehiculoActual = alambiqueVeloz

    method recuerdoUltimoLugarVisitado() = casa.recuerdoDestacado().formaActual()
    method cantidadLugaresVisitados() = casa.recuerdosTirados() + 1
    method vehiculoActual() = vehiculoActual

    method irseDeViaje(ciudad,vehiculo) {
        if (ciudad.puedoViajarEn(self.vehiculoActual())) {
            casa.cambiarRecuerdoDestacado(ciudad)
        }
    }
    method cambiarVehiculo(vehiculo) {
        vehiculoActual = vehiculo
    }
}
object casa {
    var recuedoDestacado = recuerdoParis
    var recuerdosTirados = 0

    method recuerdoDestacado() = recuedoDestacado
    method recuerdosTirados() = recuerdosTirados

    method cambiarRecuerdoDestacado(ciudadVisitada) {
        recuedoDestacado = ciudadVisitada.recuerdoComprado()
        recuerdosTirados += 1
    }
}


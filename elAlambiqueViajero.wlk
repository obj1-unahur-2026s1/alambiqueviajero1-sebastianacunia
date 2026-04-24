
import recuerdos.*
object luke {

    method recuerdoUltimoLugarVisitado() = casa.recuerdoDestacado().formaActual()
    method cantidadLugaresVisitados() = casa.recuerdosTirados() + 1
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


import ciudades.*
object recuerdoParis {
    method ciudadCorrespondiente() = paris
    method formaActual() = llaveroTorreEiffel
}
object recuerdoBsAs {
    
    method ciudadCorrespondiente() = buenosAires
    method formaActual() = mate 
    
}
object recuerdoBagdad {
    
    const formasPosibles = [jardinesDeBabilonia, barrilDePetroleo, armaDestruccionMasiva, muñecoTioSam]

    method ciudadCorrespondiente() = bagdad
    method formaActual() {
        return formasPosibles.find { forma => forma.añoCorrespondiente(bagdad.añoActual()) }
    }
    

}
object recuerdoLasVegas {


  
}
// Objetos recuerdo París
object llaveroTorreEiffel {
  
}
//Objetos recuerdo de Buenos Aires
object mate {
    method tieneYerba() = presidente.tieneBigote()
}
object presidente {
  var tieneBigote = true

  method tieneBigote() = tieneBigote 

  method afeitarPresidente() {
    tieneBigote = false
  }
  method crecerBigoteDelPresidente() {
    tieneBigote = true
  }
}
//Objectos recuerdo de Bagdad
object barrilDePetroleo {
    method añoCorrespondiente(año) = año.between(1970, 2002)
}
object armaDestruccionMasiva {
    method añoCorrespondiente(año) = año == 2003 || año == 2004
}
object jardinesDeBabilonia {
    method añoCorrespondiente(año) = año < 1970 
}
object muñecoTioSam {
  method añoCorrespondiente(año) = año > 2004 
}
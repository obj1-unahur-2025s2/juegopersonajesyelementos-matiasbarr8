import armas.*
import elementos.*

object luisa {
    var personajeActivo = mario

    method cambiarPersonaje(nuevoPersonaje) {
     personajeActivo = nuevoPersonaje
    }

    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }

}
object floki {
    var arma = ballesta

    method encontrar(elemento) {
        if(arma.estaCargada())
            elemento.recibirAtaque(arma.potencia())
            arma.registrarUso()
    }

    method cambiarArma(unArma) {
        arma = unArma
    }
}
object mario {
    var valorRecolectado = 0
    var ultimoElemento = ningunElemento

    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        ultimoElemento = elemento
    }
    method estaFeliz() {
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }
}
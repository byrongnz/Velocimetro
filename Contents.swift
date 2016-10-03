//: Playground - noun: a place where people can play

import Cocoa

enum Velocidades : Int{
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
    
}

class Auto{
    var velocidad = Velocidades()
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
    }
    
    convenience init() {
        self.init(velocidadInicial: velocidad)
    }
    
}

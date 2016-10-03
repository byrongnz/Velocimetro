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


class Auto {
    var velocidad : Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var velo: String = ""
        
        switch velocidad.rawValue {
        case 0:
            velo = "Apagado"
            velocidad = .VelocidadBaja
            return (actual: 0, velocidadEnCadena: velo)
            
        case 20:
            velo = "Velocidad baja"
            velocidad = .VelocidadMedia
            return (actual: 20,velocidadEnCadena: velo)
        case 50:
            velo = "Velocidad media"
            velocidad = .VelocidadAlta
            return (actual: 50,velocidadEnCadena: velo)
        case 120:
            velo = "Velocidad alta"
            velocidad = .VelocidadMedia
            return (actual: 120,velocidadEnCadena: velo)
        default: break
            
        }
        return (actual: velocidad.rawValue,velocidadEnCadena: velo)
    }
}


var auto : Auto = Auto()

for i in 0...20 {
    var (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(actual), \(velocidadEnCadena)")
}

//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int {
    
    case Apagado = 0 , VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
    
    
}

class Auto {
    
    
    var velocidad : Velocidades
    
    init( ){
        velocidad = Velocidades( velocidadInicial : Velocidades.Apagado )
        
    }
    
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String ) {
        let  velocidadRet = self.velocidad.rawValue
        var velStRet=""

        switch ( self.velocidad ){
        
        case .Apagado :
            velocidad = Velocidades.VelocidadBaja
            velStRet = "Apagado"
        
        case .VelocidadBaja :
            velocidad = Velocidades.VelocidadMedia
            velStRet = "Velocidad Baja"
            
        case .VelocidadMedia :
            velocidad = Velocidades.VelocidadAlta
            velStRet = "Velocidad Media"
            
        default :
            velocidad = Velocidades.VelocidadMedia
            velStRet = "Velocidad Alta"
        }

        return ( velocidadRet , velStRet)
    }
    
    
}

var coche = Auto ( )

//print (" \(coche.velocidad.rawValue)")

//print (" \(cambioVelocidad.actual) - \(cambioVelocidad.velocidadEnCadena)")
var cambioVelocidad=coche.cambioDeVelocidad()
print (" \(cambioVelocidad.actual), \(cambioVelocidad.velocidadEnCadena)")
for index in 1 ... 20 {
    cambioVelocidad = coche.cambioDeVelocidad()
    print (" \(cambioVelocidad.actual), \(cambioVelocidad.velocidadEnCadena)")
}


//print (" \(coche.cambioDeVelocidad().actual) - \(coche.cambioDeVelocidad().velocidadEnCadena)")

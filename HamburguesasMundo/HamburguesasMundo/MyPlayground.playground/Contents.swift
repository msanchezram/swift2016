//: Playground - noun: a place where people can play

import UIKit

class ColeccionDePais {
    
    var paises : [String]=["España","Andorra","Portugal", "Francia"]
    
    func obtenPais() -> String{
        let posicion = Int (Int(arc4random()) % paises.count)
        //print("El numero pos-paises es \(posicion)")
        return paises[posicion]
    }
}

class ColeccionDeHamburguesa {
    
    var hamburguesas : [String]=["Big Mac",            "Cuarto de libra con queso","Mcnifica","Hamburguesa regular",       "Hamburguesa regular con queso","Mc queso","Big tasty","Cuarto de libra doble con queso","Mc pollo deluxe","Pechuga classic"
    ]
    
    func obtenHamburguesa() -> String{
        let posicion = Int (Int(arc4random()) % hamburguesas.count)
        //print("El numero pos-hamburguer es \(posicion)")
        return hamburguesas[posicion]
    }
    
}

var a = ColeccionDePais()
var b = ColeccionDeHamburguesa()

for index in 1...5 {
    
    print (a.obtenPais())
    print (b.obtenHamburguesa())
    
}
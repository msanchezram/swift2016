//
//  Datos.swift
//  HamburguesasMundo
//
//  Created by Marcos on 27/11/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import Foundation

class ColeccionDePais {
    
    var paises : [String]=["España","Andorra","Portugal", "Francia","Italia", "UK","Alemania","Bélgica","México","EEUU","Canadá","Uruguay","Argentina", "Brasil","China", "Japon","Nueva Zelanda","Marrucecos", "Argelia","Kenia"]
    
    func obtenPais() -> String{
        let posicion = Int (Int(arc4random()) % paises.count)
        //print("El numero pos-paises es \(posicion)")
        return paises[posicion]
    }
}

class ColeccionDeHamburguesa {
    
    var hamburguesas : [String]=["Big Mac",            "Cuarto de libra con queso","Mcnifica","Hamburguesa regular",       "Hamburguesa regular con queso","Mc queso","Big tasty","Cuarto de libra doble con queso","Mc pollo deluxe","Pechuga classic", "Grand McExtreme", "Angus Bistro","Club House","BBQ Crispy", ""
    ]
    
    func obtenHamburguesa() -> String{
        let posicion = Int (Int(arc4random()) % hamburguesas.count)
        //print("El numero pos-hamburguer es \(posicion)")
        return hamburguesas[posicion]
    }
    
}

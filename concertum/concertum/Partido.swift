//
//  Partido.swift
//  concertum
//
//  Created by Marcos on 16/1/17.
//  Copyright © 2017 MSR. All rights reserved.
//

import Foundation
import UIKit

class Partido {
    
    var codigo=""
    var nombre = ""
    var regidores = 0
    var votacion = -1 //0 contra ; 1 abstencion ; 2 favor
    
    init( aCodigo : String, aNombre : String, aRegidores: Int) {
    
        codigo=aCodigo
        nombre=aNombre
        regidores=aRegidores
        
    }
}

func actualizarVotacion( valor:Int , aCodigoPartido : String, aLstPartidos : Array<Partido>) {
    
    for tmpPartido in aLstPartidos {
        
        if tmpPartido.codigo == aCodigoPartido {
            tmpPartido.votacion = valor
            break
        }
        
    }
    
    
}

func limpiarVotaciones( aLstPartidos : Array<Partido>) {
    
    for tmpPartido in aLstPartidos {
        
        tmpPartido.votacion = -1 //limpiamos la votacion
        
    }
    
}

func desactivarBoton ( aBoton : UIButton ,  aColor : UIColor) {
    
    
        aBoton.backgroundColor = aColor
        aBoton.tintColor = UIColor.blue
        aBoton.isEnabled = false
    
}

func desmarcarBoton (aBoton : UIButton ,  aColor : UIColor ) {
    aBoton.backgroundColor = aColor
    aBoton.tintColor = UIColor.blue    
}

func activarBoton (aBoton : UIButton ,  aColor : UIColor){
    
    if !aBoton.isEnabled {
        aBoton.backgroundColor = aColor
        aBoton.tintColor = UIColor.blue
        aBoton.isEnabled = true
    }
    
}

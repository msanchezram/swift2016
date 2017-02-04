//
//  InterfaceTipoMasaController.swift
//  PizzaAW
//
//  Created by Marcos on 8/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceTipoMasaController: WKInterfaceController {

    var pizza = Pizza()
    
    @IBOutlet var masDelgada: WKInterfaceSwitch!
    
    @IBOutlet var masCrujiente: WKInterfaceSwitch!
    
    @IBOutlet var masGruesa: WKInterfaceSwitch!
    
    var bMasaDel = false
    var bMasaCruj = false
    var bMasaGru = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = (context as! Pizza)
        
        print(pizza.tamanyo)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //print("Vista Tipo Masa")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func selecDelgada(_ value: Bool) {
        bMasaDel = value
        if (bMasaCruj){
            masCrujiente.setOn(false)
            bMasaCruj = false
        }
        if (bMasaGru){
            masGruesa.setOn(false)
            bMasaGru=false
        }
    }
    
    @IBAction func selecCrujiente(_ value: Bool){
        bMasaCruj = value
        if (bMasaDel){
            masDelgada.setOn(false)
            bMasaDel = false
        }
        if (bMasaGru){
            masGruesa.setOn(false)
            bMasaGru=false
        }
    }
    @IBAction func selecGruesa(_ value: Bool) {
        bMasaGru = value
        if (bMasaDel){
            masDelgada.setOn(false)
            bMasaDel = false
        }
        if (bMasaCruj){
            masCrujiente.setOn(false)
            bMasaCruj = false
        }
    }

    @IBAction func pushSiguiente() {
        if (bMasaDel){
            pizza.tipoMasa = "Delgada"
        }else if (bMasaCruj){
            pizza.tipoMasa = "Crujiente"
        }else if (bMasaGru){
            pizza.tipoMasa="Gruesa"
        }
        
        pushController(withName: "vistaTipoQueso", context: pizza)
    }
}

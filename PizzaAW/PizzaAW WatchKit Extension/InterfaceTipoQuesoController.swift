//
//  InterfaceTipoQuesoController.swift
//  PizzaAW
//
//  Created by Marcos on 8/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceTipoQuesoController: WKInterfaceController {

    var pizza = Pizza()
    
    var bQMozza = false
    var bQParme = false
    var bQCheddar = false
    
    @IBOutlet var quesoMozzarela: WKInterfaceSwitch!
    
    @IBOutlet var quesoParme: WKInterfaceSwitch!
    
    @IBOutlet var quesoCheddar: WKInterfaceSwitch!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
        print("Tipo Queso")
        print(pizza.tipoMasa)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selQuesoMozzarela(_ value: Bool) {
        bQMozza = value
        
        if (bQParme){
            quesoParme.setOn(false)
            bQParme = false
        } else if (bQCheddar){
            quesoCheddar.setOn(false)
            bQCheddar = false
        }
    }
    
    
    @IBAction func selQuesoParme(_ value: Bool) {
        
        bQParme = value
        if (bQMozza){
            quesoMozzarela.setOn(false)
            bQMozza = false
        }else if (bQCheddar){
            quesoCheddar.setOn(false)
            bQCheddar = false
        }
    }
    
    
    @IBAction func selQuesoCheddar(_ value: Bool) {
        
        bQCheddar = value
        if (bQMozza){
            quesoMozzarela.setOn(false)
            bQMozza = false
        } else if (bQParme){
            quesoParme.setOn(false)
            bQParme = false
        }
    }
    
    @IBOutlet var pushSiguiente: WKInterfaceButton!
    
    @IBAction func pushButtonSiguiente() {
        if (bQMozza){
            
            pizza.tipoQueso = "Mozzarela"
        }else if (bQParme){
            pizza.tipoQueso = "Parmesano"
        }else if (bQCheddar){
            pizza.tipoQueso="Cheddar"
        }else {
            pizza.tipoQueso = "Sin Queso"
        }
        
        pushController(withName: "vistaIngredientes", context: pizza)
    }
    
    
}

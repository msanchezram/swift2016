//
//  InterfaceIngredientesController.swift
//  PizzaAW
//
//  Created by Marcos on 13/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceIngredientesController: WKInterfaceController {

    var pizza = Pizza()
    var bAtun = false
    var bJamon = false
    var bPepperoni = false
    var bPavo = false
    var bSalchicha = false
    var bAceituna = false
    var bCebolla = false
    var bPimiento = false
    var bPinya = false
    var bAnchoa = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
        print("Ingredientes")
        print(pizza.tipoQueso)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func selAtun(_ value: Bool) {
        bAtun = value
    }
    @IBAction func selJamon(_ value: Bool) {
        bJamon = value
    }
    @IBAction func selPepperoni(_ value: Bool) {
        bPepperoni = value
    }
    @IBAction func selPavo(_ value: Bool) {
        bPavo = value
    }
    @IBAction func selSalchicha(_ value: Bool) {
        bSalchicha = value
    }
    @IBAction func selAceituna(_ value: Bool) {
        bAceituna = value
    }
    @IBAction func selCebolla(_ value: Bool) {
        bCebolla = value
    }
    @IBAction func selPinya(_ value: Bool) {
        bPinya = value
    }
    @IBAction func selAnchoa(_ value: Bool) {
        bAnchoa = value
    }
    
    @IBAction func selPimiento(_ value: Bool) {
        bPimiento = value
    }

    @IBAction func pushSiguiente() {
        var ingredientes = ""
        
        if (bAtun){
            ingredientes += "Atún, "
        }
        if (bJamon){
            ingredientes += "Jamón, "
        }
        if (bPepperoni){
            ingredientes += "Pepperoni, "
        }
        if (bPavo){
            ingredientes += "Pavo, "
        }
        if (bSalchicha){
            ingredientes += "Salchicha, "
        }
        if (bAceituna){
            ingredientes += "Aceituna, "
        }
        if (bCebolla){
            ingredientes += "Cebolla, "
        }
        if (bPimiento){
            ingredientes += "Pimiento, "
        }
        if (bPinya){
            ingredientes += "Piña, "
        }
        if (bAnchoa){
            ingredientes += "Anchoa, "
        }
        
        if (!ingredientes.isEmpty){
            let pos = ingredientes.index(ingredientes.endIndex, offsetBy: -2)
            ingredientes = ingredientes.substring(to: pos)
        }
        print("Ingredientes calculado \(ingredientes)")
        pizza.ingredientes = ingredientes
        
        pushController(withName: "vistaConfirmacion", context: pizza)
    }
}

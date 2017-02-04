//
//  InterfaceController.swift
//  PizzaAW WatchKit Extension
//
//  Created by Marcos on 8/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tamPeq: WKInterfaceSwitch!
    
    @IBOutlet var tamMed: WKInterfaceSwitch!
    
    @IBOutlet var tamGran: WKInterfaceSwitch!
    
    var bTamPeq = false
    var bTamMed = false
    var bTamGran = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func selecPequenya(_ value: Bool){
        bTamPeq = value
        if (bTamMed){
            tamMed.setOn(false)
            bTamMed = false
        }
        if (bTamGran){
            tamGran.setOn(false)
            bTamGran = false
        }
    }
    
    @IBAction func selecMediana(_ value: Bool) {
        bTamMed=value
        if (bTamPeq){
            tamPeq.setOn(false)
            bTamPeq = false
        }
        if (bTamGran){
            tamGran.setOn(false)
            bTamGran = false
        }
        
    
    }
    @IBAction func selecGrande(_ value: Bool) {
        bTamGran=value
        if (bTamPeq){
            tamPeq.setOn(false)
            bTamPeq = false
        }
        if (bTamMed){
            tamMed.setOn(false)
            bTamMed = false
        }
    }

    @IBAction func pushSiguiente() {
        
        var pizza = Pizza()
        
        if (bTamPeq){
            pizza.tamanyo = "Pequeña"
        }else if (bTamMed){
            pizza.tamanyo = "Mediana"
        }else if (bTamGran){
            pizza.tamanyo = "Grande"
        }
        
        pushController(withName: "vistaTipoMasa", context: pizza)
    
    }
}

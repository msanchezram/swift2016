//
//  InterfaceController.swift
//  ComandaPizzaAW WatchKit Extension
//
//  Created by Marcos on 8/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var tamPequenya: WKInterfaceSwitch!
    
    
    @IBOutlet var tamMediana: WKInterfaceSwitch!
    
    @IBOutlet var tamGrande: WKInterfaceSwitch!
    
    var pTamPeque=false
    var pTamMediana=false
    var pTamGrande=false
    
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
    

    @IBAction func updateTamPequenya(_ value: Bool) {
        pTamPeque=value

    }
    
    
    @IBAction func UpdateTamMediana(_ value: Bool) {

        pTamMediana=value


    }

    @IBAction func updateTamGrande(_ value: Bool) {

        pTamGrande=value
       
    }
    
    @IBAction func actionSiguiente(){
        
        let pizza = Pizza()
        
        pizza.pequenya = pTamPeque
        pizza.mediana = pTamMediana
        pizza.grande = pTamGrande
        
        let contexto = ValorContext(p: pizza)
        pushController(withName: "GoToMasa", context: contexto)
        
        print("fin tamaño, paso a siguiente")
    }
}

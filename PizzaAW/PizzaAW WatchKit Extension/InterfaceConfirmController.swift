//
//  InterfaceConfirmController.swift
//  PizzaAW
//
//  Created by Marcos on 15/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceConfirmController: WKInterfaceController {

    var pizza = Pizza()
    
    @IBOutlet var msg: WKInterfaceLabel!
    
    @IBOutlet var tam: WKInterfaceLabel!
    
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    
    @IBOutlet var btnEnviar: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        var bErrores=false
        pizza = context as! Pizza
        print("Confirmar")
        print(pizza.ingredientes)
        
        msg.setText("")
        tam.setText("")
        masa.setText("")
        queso.setText("")
        ingredientes.setText("")
        
        
        
        if(pizza.tamanyo.isEmpty){
            msg.setText("Falta tamaño")
            bErrores=true
        }else if (pizza.tipoMasa.isEmpty){
            msg.setText("Falta tipo de masa")
            bErrores=true
        }else if(pizza.tipoQueso.isEmpty){
            msg.setText("Falta tipo de queso")
            bErrores=true
        }else if(pizza.ingredientes.isEmpty){
            msg.setText("Falta algún ingrediente")
            bErrores=true
        }
        
        if (!bErrores){
            tam.setText(pizza.tamanyo)
            masa.setText(pizza.tipoMasa)
            queso.setText(pizza.tipoQueso)
            ingredientes.setText(pizza.ingredientes)
            btnEnviar.setEnabled(true)
            
        }else {
            btnEnviar.setEnabled(false)
            
        }
        
        //ingredientes.sizeToFitHeight()
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

    
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func pushEnviarCocina() {
        msg.setText("Enviado a Cocina")
    }
}

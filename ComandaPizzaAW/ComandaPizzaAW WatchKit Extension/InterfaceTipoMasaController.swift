//
//  InterfaceTipoMasaController.swift
//  ComandaPizzaAW
//
//  Created by Marcos on 8/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceTipoMasaController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("Inteface Tipo Masa")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func actionMasaSiguiente() {
        
        print("Fin Masa, paso a Siguiente")
    }
}

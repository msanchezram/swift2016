//
//  ViewIngredientesController.swift
//  ComandaPizza
//
//  Created by Marcos on 4/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewIngredientesController: UIViewController {

    var tam=""
    var tipoMasa=""
    var tipoQueso=""
    
    @IBOutlet weak var ingJamon: UISwitch!
    
    @IBOutlet weak var ingPepperoni: UISwitch!
    
    @IBOutlet weak var ingSalchicha: UISwitch!
    
    @IBOutlet weak var ingAceituna: UISwitch!
    
    @IBOutlet weak var ingCebolla: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print("Tipo ingredientes")
        //print(tam)
        //print(tipoMasa)
        //print(tipoQueso)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var ingredientes=""
        //var pos=0
        
        if (ingJamon.isOn) {
            ingredientes = "Jamón, "
        }
        if (ingPepperoni.isOn){
            ingredientes += "Pepperoni, "
        }
        if (ingSalchicha.isOn){
            ingredientes += "Salchicha, "
        }
        if (ingAceituna.isOn){
            ingredientes += "Aceituna, "
        }
        if (ingCebolla.isOn){
            ingredientes += "Cebolla, "
        }
        
        if (!ingredientes.isEmpty){
            let pos = ingredientes.index(ingredientes.endIndex, offsetBy: -2)
            ingredientes = ingredientes.substring(to: pos)
        }
        
        let segVista = segue.destination as! ViewConfirmacionController
        segVista.tam = tam
        segVista.tipoMasa = tipoMasa
        segVista.tipoQueso = tipoQueso
        segVista.ingrediente = ingredientes
        
    }
 

}

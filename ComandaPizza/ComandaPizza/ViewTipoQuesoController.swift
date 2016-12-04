//
//  ViewTipoQuesoController.swift
//  ComandaPizza
//
//  Created by Marcos on 4/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewTipoQuesoController: UIViewController {
    
    var tam = ""
    var tipoMasa = ""
    
    @IBOutlet weak var quesoMozzarela: UISwitch!
    
    @IBOutlet weak var quesoCheddar: UISwitch!
    
    @IBOutlet weak var quesoParmesano: UISwitch!
    
    @IBOutlet weak var quesoSinQueso: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print("Tipo queso")
        //print(tam)
        //print(tipoMasa)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getQuesoMozzarela(_ sender: Any) {
        if (quesoMozzarela.isOn){
            quesoCheddar.setOn(false, animated: true)
            quesoParmesano.setOn(false, animated: true)
            quesoSinQueso.setOn(false, animated: true)
        }
    }
    
    @IBAction func getQuesoCheddar(_ sender: Any) {
        if (quesoCheddar.isOn){
            quesoMozzarela.setOn(false, animated: true)
            quesoParmesano.setOn(false, animated: true)
            quesoSinQueso.setOn(false, animated: true)
        }
    }
    
    @IBAction func getQuesoParmesano(_ sender: Any) {
        if (quesoParmesano.isOn){
            quesoMozzarela.setOn(false, animated: true)
            quesoCheddar.setOn(false, animated: true)
            quesoSinQueso.setOn(false, animated: true)
        }
    }
    
    @IBAction func getQuesoSinQueso(_ sender: Any) {
        if (quesoSinQueso.isOn){
            quesoMozzarela.setOn(false, animated: true)
            quesoCheddar.setOn(false, animated: true)
            quesoParmesano.setOn(false, animated: true)
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var queso=""
        
        if (quesoMozzarela.isOn){
            queso="Queso Mozzarela"
        }else if (quesoCheddar.isOn){
            queso="Queso Cheddar"
        }else if (quesoParmesano.isOn){
            queso="Queso Parmesano"
        }else if (quesoSinQueso.isOn){
            queso="Sin Queso"        }
    
        let segVista = segue.destination as! ViewIngredientesController
        
        segVista.tam = tam
        segVista.tipoMasa = tipoMasa
        segVista.tipoQueso = queso
    
    }
 

}

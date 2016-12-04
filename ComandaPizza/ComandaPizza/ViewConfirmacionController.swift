//
//  ViewConfirmacionController.swift
//  ComandaPizza
//
//  Created by Marcos on 4/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewConfirmacionController: UIViewController {
    
 
    var tam=""
    var tipoMasa=""
    var tipoQueso=""
    var ingrediente=""
    
    @IBOutlet weak var msgError: UILabel!
    
    @IBOutlet weak var confTamany: UILabel!
    
    @IBOutlet weak var confMasa: UILabel!
    
    @IBOutlet weak var confQueso: UILabel!
    
    @IBOutlet weak var confIngredientes: UILabel!
    
    @IBOutlet weak var btnEnviarCocina: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        msgError.text = ""
        confTamany.text = ""
        confMasa.text = ""
        confQueso.text = ""
        confIngredientes.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Comanda")
        print(tam)
        print(tipoMasa)
        print(tipoQueso)
        print(ingrediente)
        
        msgError.text = ""
        
        
        if(tam.isEmpty){
            msgError.text="Falta informar el tamaño de la Pizza"
        }else if (tipoMasa.isEmpty){
            msgError.text="Falta informar el tipo de masa de la Pizza"
        }else if(tipoQueso.isEmpty){
            msgError.text="Falta informar el tipo de queso de la Pizza"
        }else if(ingrediente.isEmpty){
            msgError.text="Falta informar algún ingrediente en la Pizza"
        }
        
        if (msgError.text?.isEmpty)!{
            confTamany.text=tam
            confMasa.text=tipoMasa
            confQueso.text=tipoQueso
            confIngredientes.text=ingrediente
            btnEnviarCocina.isEnabled=true
        }else {
            btnEnviarCocina.isEnabled=false
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressEnviarCocina(_ sender: Any) {
        
        msgError.text="Enviado a cocina"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

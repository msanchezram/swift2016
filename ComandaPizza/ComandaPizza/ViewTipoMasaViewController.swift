//
//  ViewTipoMasaViewController.swift
//  ComandaPizza
//
//  Created by Marcos on 3/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewTipoMasaViewController: UIViewController {
    
    var tam=""
    
    @IBOutlet weak var masaDelgada: UISwitch!
    
    @IBOutlet weak var masaCrujiente: UISwitch!

    @IBOutlet weak var masaGruesa: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("Tipo Masa")
        //print(tam)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        var masa = ""
        
        if (masaDelgada.isOn){
            masa="Masa Delgada"
        }else if (masaCrujiente.isOn){
            masa="Masa Crujiente"
        }else if (masaGruesa.isOn){
            masa="Masa Gruesa"
        }
        
        let segVista = segue.destination as! ViewTipoQuesoController
        
        segVista.tam = tam
        segVista.tipoMasa=masa
    }

    @IBAction func getMasaDelgada(_ sender: Any) {
        if (masaDelgada.isOn){
            masaCrujiente.setOn(false, animated: true)
            masaGruesa.setOn(false, animated: true)
        }
    }
    
    @IBAction func getMasaCrujiente(_ sender: Any) {
        if (masaCrujiente.isOn){
            masaDelgada.setOn(false, animated: true)
            masaGruesa.setOn(false, animated: true)
        }
    
    }
    
    @IBAction func getMasaGruesa(_ sender: Any) {
        if (masaGruesa.isOn){
            masaCrujiente.setOn(false, animated: true)
            masaCrujiente.setOn(false, animated: true)
        }
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

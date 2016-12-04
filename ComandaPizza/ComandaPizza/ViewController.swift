//
//  ViewController.swift
//  ComandaPizza
//
//  Created by Marcos on 3/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tamPeque: UISwitch!
    
    @IBOutlet weak var tamMediana: UISwitch!
    
    @IBOutlet weak var tamGrande: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goNext(_ sender: Any) {
        
        print(" Pequeña \(tamPeque.isOn.description)")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        var taman = ""
        
        if (tamPeque.isOn){
            taman="Tamaño Pequeña"
        }else if (tamMediana.isOn){
            taman="Tamaño Mediana"
        }else if (tamGrande.isOn){
            taman="Tamaño Grande"
        }
        
        let segVista = segue.destination as! ViewTipoMasaViewController
        
        segVista.tam = taman
    }

    @IBAction func getPeque(_ sender: Any) {
        if (tamPeque.isOn){
            tamMediana.setOn(false, animated: true)
            tamGrande.setOn(false, animated: true)
        }
    }

    @IBAction func getMediana(_ sender: Any) {
        
        if (tamMediana.isOn){
            tamPeque.setOn(false, animated: true)
            tamGrande.setOn(false, animated: true)
        }
    }
    
    @IBAction func getGrande(_ sender: Any) {
        
        if (tamGrande.isOn){
            tamPeque.setOn(false, animated: true)
            tamMediana.setOn(false, animated: true)
        }    }
    
    
}

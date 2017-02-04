//
//  ViewController.swift
//  HamburguesasMundo
//
//  Created by Marcos on 27/11/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lPais: UILabel!
    
    @IBOutlet weak var lHamburguesa: UILabel!
    
    let paises = ColeccionDePais()
    let hamburguesa = ColeccionDeHamburguesa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameHamburguesa() {
        //print("Hamburguesa!!")
        lPais.text=paises.obtenPais()
        lHamburguesa.text=hamburguesa.obtenHamburguesa()
        
    }

}


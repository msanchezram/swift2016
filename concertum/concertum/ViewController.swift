//
//  ViewController.swift
//  concertum
//
//  Created by Marcos on 16/1/17.
//  Copyright © 2017 MSR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listaPartidos = Array<Partido>()
    
    
    @IBOutlet weak var pscAF: UIButton!
    @IBOutlet weak var pscAb: UIButton!
    @IBOutlet weak var pscEC: UIButton!
    
    var colorGris : UIColor?


    @IBOutlet weak var becAF: UIButton!
    @IBOutlet weak var becAb: UIButton!
    @IBOutlet weak var becEC: UIButton!
    
    @IBOutlet weak var ciuAF: UIButton!
    @IBOutlet weak var ciuAb: UIButton!
    @IBOutlet weak var ciuEC: UIButton!
    
    @IBOutlet weak var csAF: UIButton!
    @IBOutlet weak var csAb: UIButton!
    @IBOutlet weak var csEC: UIButton!
    
    @IBOutlet weak var ercAF: UIButton!
    @IBOutlet weak var ercAb: UIButton!
    @IBOutlet weak var ercEC: UIButton!
    
    @IBOutlet weak var ppAF: UIButton!
    @IBOutlet weak var ppAb: UIButton!
    @IBOutlet weak var ppEC: UIButton!
    
    @IBOutlet weak var cupAF: UIButton!
    @IBOutlet weak var cupAb: UIButton!
    @IBOutlet weak var cupEC: UIButton!
    
    
    @IBOutlet weak var selEstandar: UISwitch!
    @IBOutlet weak var selInstitucional: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        listaPartidos.append(Partido(aCodigo: "PSC",aNombre: "Partit dels Socialistes Catalans",aRegidores: 4))
        
        listaPartidos.append(Partido(aCodigo: "BEC",aNombre: "Barcelona En Comú",aRegidores: 11))
        
        listaPartidos.append(Partido(aCodigo: "CIU",aNombre: "Corvengencia i Unió",aRegidores: 10))
        
        listaPartidos.append(Partido(aCodigo: "Cs",aNombre: "Ciutadans",aRegidores: 5))
        
        listaPartidos.append(Partido(aCodigo: "ERC",aNombre: "Esquerra Republicana Catalana",aRegidores: 5))
        
        listaPartidos.append(Partido(aCodigo: "PP",aNombre: "Partit Popular",aRegidores: 3))
        
        listaPartidos.append(Partido(aCodigo: "CUP",aNombre: "Candidatura Unintat Popular",aRegidores: 3))
    
        colorGris = pscAF.backgroundColor

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //PSC
    @IBAction func onPscAf(_ sender: Any) {
        desmarcarBoton(aBoton: pscAb, aColor: colorGris!)
        desmarcarBoton(aBoton: pscEC, aColor: colorGris!)
        
        pscAF.backgroundColor = UIColor.green
        pscAF.tintColor = UIColor.white
        /*
        pscAb.backgroundColor = colorGris
        pscAb.tintColor = UIColor.blue
        pscEC.backgroundColor = colorGris
        pscEC.tintColor = UIColor.blue
        */
        actualizarVotacion(valor: 2, aCodigoPartido: "PSC", aLstPartidos: listaPartidos)
    }
    @IBAction func onPscAb(_ sender: Any) {
        pscAF.backgroundColor = colorGris
        pscAF.tintColor = UIColor.blue
        pscAb.backgroundColor = UIColor.orange
        pscAb.tintColor = UIColor.white
        pscEC.backgroundColor = colorGris
        pscEC.tintColor = UIColor.blue
        
        actualizarVotacion(valor: 1, aCodigoPartido: "PSC", aLstPartidos: listaPartidos)
    }
    @IBAction func onPscEc(_ sender: Any) {
        pscAF.backgroundColor = colorGris
        pscAF.tintColor = UIColor.blue
        pscAb.backgroundColor = colorGris
        pscAb.tintColor = UIColor.blue
        pscEC.backgroundColor = UIColor.red
        pscEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "PSC", aLstPartidos: listaPartidos)
    }
    //BEC
    @IBAction func onBecAf(_ sender: Any) {
        becAF.backgroundColor = UIColor.green
        becAF.tintColor = UIColor.white
        becAb.backgroundColor = colorGris
        becAb.tintColor = UIColor.blue
        becEC.backgroundColor = colorGris
        becEC.tintColor = UIColor.blue
        
        actualizarVotacion(valor: 2, aCodigoPartido: "BEC", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onBecAb(_ sender: Any) {
        becAF.backgroundColor = colorGris
        becAF.tintColor = UIColor.blue
        becAb.backgroundColor = UIColor.orange
        becAb.tintColor = UIColor.white
        becEC.backgroundColor = colorGris
        becEC.tintColor = UIColor.blue
        
        actualizarVotacion(valor: 1, aCodigoPartido: "BEC", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onBecEc(_ sender: Any) {
        becAF.backgroundColor = colorGris
        becAF.tintColor = UIColor.blue
        becAb.backgroundColor = colorGris
        becAb.tintColor = UIColor.blue
        becEC.backgroundColor = UIColor.red
        becEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "BEC", aLstPartidos: listaPartidos)
    }
    //Ciu
    @IBAction func onCiuAf(_ sender: Any) {
        ciuAF.backgroundColor = UIColor.green
        ciuAF.tintColor = UIColor.white
        ciuAb.backgroundColor = colorGris
        ciuAb.tintColor = UIColor.blue
        ciuEC.backgroundColor = colorGris
        ciuEC.tintColor = UIColor.blue
        
        actualizarVotacion(valor: 2, aCodigoPartido: "CIU", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onCiuAb(_ sender: Any) {
        ciuAF.backgroundColor = colorGris
        ciuAF.tintColor = UIColor.blue
        ciuAb.backgroundColor = UIColor.orange
        ciuAb.tintColor = UIColor.white
        ciuEC.backgroundColor = colorGris
        ciuEC.tintColor = UIColor.blue
        
        actualizarVotacion(valor: 1, aCodigoPartido: "CIU", aLstPartidos: listaPartidos)
    }

    @IBAction func onCiuEC(_ sender: Any) {
        ciuAF.backgroundColor = colorGris
        ciuAF.tintColor = UIColor.blue
        ciuAb.backgroundColor = colorGris
        ciuAb.tintColor = UIColor.blue
        ciuEC.backgroundColor = UIColor.red
        ciuEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "CIU", aLstPartidos: listaPartidos)
    }
    
    //Ciutadans
    @IBAction func onCsAF(_ sender: Any) {
        csAF.backgroundColor = UIColor.green
        csAF.tintColor = UIColor.white
        csAb.backgroundColor = colorGris
        csAb.tintColor = UIColor.blue
        csEC.backgroundColor = colorGris
        csEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 2, aCodigoPartido: "Cs", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onCsAb(_ sender: Any) {
        csAF.backgroundColor = colorGris
        csAF.tintColor = UIColor.blue
        csAb.backgroundColor = UIColor.orange
        csAb.tintColor = UIColor.white
        csEC.backgroundColor = colorGris
        csEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 1, aCodigoPartido: "Cs", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onCsEC(_ sender: Any) {
        csAF.backgroundColor = colorGris
        csAF.tintColor = UIColor.blue
        csAb.backgroundColor = colorGris
        csAb.tintColor = UIColor.blue
        csEC.backgroundColor = UIColor.red
        csEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "Cs", aLstPartidos: listaPartidos)
    }
    //ERC
    @IBAction func onErcAF(_ sender: Any) {
        ercAF.backgroundColor = UIColor.green
        ercAF.tintColor = UIColor.white
        ercAb.backgroundColor = colorGris
        ercAb.tintColor = UIColor.blue
        ercEC.backgroundColor = colorGris
        ercEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 2, aCodigoPartido: "ERC", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onErcAb(_ sender: Any) {
        ercAF.backgroundColor = colorGris
        ercAF.tintColor = UIColor.blue
        ercAb.backgroundColor = UIColor.orange
        ercAb.tintColor = UIColor.white
        ercEC.backgroundColor = colorGris
        ercEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 1, aCodigoPartido: "ERC", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onErcEC(_ sender: Any) {
        ercAF.backgroundColor = colorGris
        ercAF.tintColor = UIColor.blue
        ercAb.backgroundColor = colorGris
        ercAb.tintColor = UIColor.blue
        ercEC.backgroundColor = UIColor.red
        ercEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "ERC", aLstPartidos: listaPartidos)
    }
    
    //PP
    @IBAction func onPPAF(_ sender: Any) {
        ppAF.backgroundColor = UIColor.green
        ppAF.tintColor = UIColor.white
        ppAb.backgroundColor = colorGris
        ppAb.tintColor = UIColor.blue
        ppEC.backgroundColor = colorGris
        ppEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 2, aCodigoPartido: "PP", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onPPAb(_ sender: Any) {
        ppAF.backgroundColor = colorGris
        ppAF.tintColor = UIColor.blue
        ppAb.backgroundColor = UIColor.orange
        ppAb.tintColor = UIColor.white
        ppEC.backgroundColor = colorGris
        ppEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 1, aCodigoPartido: "PP", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onPPEC(_ sender: Any) {
        ppAF.backgroundColor = colorGris
        ppAF.tintColor = UIColor.blue
        ppAb.backgroundColor = colorGris
        ppAb.tintColor = UIColor.blue
        ppEC.backgroundColor = UIColor.red
        ppEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "PP", aLstPartidos: listaPartidos)
    }
    //CUP
    @IBAction func onCupAF(_ sender: Any) {
        cupAF.backgroundColor = UIColor.green
        cupAF.tintColor = UIColor.white
        cupAb.backgroundColor = colorGris
        cupAb.tintColor = UIColor.blue
        cupEC.backgroundColor = colorGris
        cupEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 2, aCodigoPartido: "CUP", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onCupAb(_ sender: Any) {
        cupAF.backgroundColor = colorGris
        cupAF.tintColor = UIColor.blue
        cupAb.backgroundColor = UIColor.orange
        cupAb.tintColor = UIColor.white
        cupEC.backgroundColor = colorGris
        cupEC.tintColor = UIColor.blue
        actualizarVotacion(valor: 1, aCodigoPartido: "CUP", aLstPartidos: listaPartidos)
    }
    
    @IBAction func onCupEC(_ sender: Any) {
        cupAF.backgroundColor = colorGris
        cupAF.tintColor = UIColor.blue
        cupAb.backgroundColor = colorGris
        cupAb.tintColor = UIColor.blue
        cupEC.backgroundColor = UIColor.red
        cupEC.tintColor = UIColor.white
        actualizarVotacion(valor: 0, aCodigoPartido: "CUP", aLstPartidos: listaPartidos)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        var tmpNombrePartidos = ""
        var tipoVotacion = ""
        var tipoVotacionInt = 0 //0 estandar 1 Institucional
        for tmpPartido in self.listaPartidos {
            
            if tmpPartido.votacion < 0 {
                if !tmpNombrePartidos.isEmpty {
                    tmpNombrePartidos += ", "
                }
                tmpNombrePartidos += tmpPartido.codigo
                
            }
        }
        
        if selEstandar.isOn {
            tipoVotacion = "Estàndar"
        }else if selInstitucional.isOn {
            tipoVotacion = "Institucional"
            tipoVotacionInt = 1
        }
        
        //si todo Ok vamos a la siguiente pantalla
        if (tmpNombrePartidos == "" && !tipoVotacion.isEmpty ) {
            let segVista = segue.destination as! ViewResultadoVotacionController
        
            segVista.listaPartidos = self.listaPartidos
            segVista.tipoVotacion = tipoVotacion
            segVista.tipoVotacionInt = tipoVotacionInt
        }else {
            var msg = ""
            
            if !tmpNombrePartidos.isEmpty {
                msg = "El/s partit/s \(tmpNombrePartidos) no han informat la seva votació"
            }else {
                msg = "Ha de seleccionar un tipus de votació (Estàndar | Institucional)"
            }
            
            let alertController = UIAlertController(title: "Error", message:
                msg, preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
   
    @IBAction func onEstandar(_ sender: Any) {
        if selInstitucional.isOn {
            selInstitucional.setOn(false, animated: true)
            
            activarBoton(aBoton: pscAb, aColor: colorGris!)
            activarBoton(aBoton: becAb, aColor: colorGris!)
            activarBoton(aBoton: ciuAb, aColor: colorGris!)
            activarBoton(aBoton: csAb, aColor: colorGris!)
            activarBoton(aBoton: ercAb, aColor: colorGris!)
            activarBoton(aBoton: ppAb, aColor: colorGris!)
            activarBoton(aBoton: cupAb, aColor: colorGris!)
        }
    }

    @IBAction func onInstitucional(_ sender: Any) {
        if selEstandar.isOn {
            selEstandar.setOn(false, animated: true)
            
            activarBoton(aBoton: pscAb, aColor: colorGris!)
            activarBoton(aBoton: becAb, aColor: colorGris!)
            activarBoton(aBoton: ciuAb, aColor: colorGris!)
            activarBoton(aBoton: csAb, aColor: colorGris!)
            activarBoton(aBoton: ercAb, aColor: colorGris!)
            activarBoton(aBoton: ppAb, aColor: colorGris!)
            activarBoton(aBoton: cupAb, aColor: colorGris!)
        }
        
        if selInstitucional.isOn {
        
            for tmpPartido in listaPartidos {
                if tmpPartido.votacion == 1 {
                    tmpPartido.votacion = -1
                }
            }

            desactivarBoton(aBoton: pscAb,  aColor: colorGris!)
            desactivarBoton(aBoton: becAb,  aColor: colorGris!)
            desactivarBoton(aBoton: ciuAb,  aColor: colorGris!)
            desactivarBoton(aBoton: csAb,  aColor: colorGris!)
            desactivarBoton(aBoton: ercAb,  aColor: colorGris!)
            desactivarBoton(aBoton: ppAb,  aColor: colorGris!)
            desactivarBoton(aBoton: cupAb,  aColor: colorGris!)
 
        } else {
            activarBoton(aBoton: pscAb, aColor: colorGris!)
            activarBoton(aBoton: becAb, aColor: colorGris!)
            activarBoton(aBoton: ciuAb, aColor: colorGris!)
            activarBoton(aBoton: csAb, aColor: colorGris!)
            activarBoton(aBoton: ercAb, aColor: colorGris!)
            activarBoton(aBoton: ppAb, aColor: colorGris!)
            activarBoton(aBoton: cupAb, aColor: colorGris!)
        }
        
    }
    
    @IBAction func onLimpiarVotaciones(_ sender: Any) {
        limpiarVotaciones(aLstPartidos: listaPartidos)
        self.selEstandar.setOn(false, animated: true)
        self.selInstitucional.setOn(false, animated: true)
        
        activarBoton(aBoton: pscAb, aColor: colorGris!)
        activarBoton(aBoton: becAb, aColor: colorGris!)
        activarBoton(aBoton: ciuAb, aColor: colorGris!)
        activarBoton(aBoton: csAb, aColor: colorGris!)
        activarBoton(aBoton: ercAb, aColor: colorGris!)
        activarBoton(aBoton: ppAb, aColor: colorGris!)
        activarBoton(aBoton: cupAb, aColor: colorGris!)
        
        //PSC
        pscAF.backgroundColor = colorGris
        pscAF.tintColor = UIColor.blue
        pscAb.backgroundColor = colorGris
        pscAb.tintColor = UIColor.blue
        pscEC.backgroundColor = colorGris
        pscEC.tintColor = UIColor.blue
        
        //BEC
        becAF.backgroundColor = colorGris
        becAF.tintColor = UIColor.blue
        becAb.backgroundColor = colorGris
        becAb.tintColor = UIColor.blue
        becEC.backgroundColor = colorGris
        becEC.tintColor = UIColor.blue
        
        //CiU
        ciuAF.backgroundColor = colorGris
        ciuAF.tintColor = UIColor.blue
        ciuAb.backgroundColor = colorGris
        ciuAb.tintColor = UIColor.blue
        ciuEC.backgroundColor = colorGris
        ciuEC.tintColor = UIColor.blue
        
        //ERC
        ercAF.backgroundColor = colorGris
        ercAF.tintColor = UIColor.blue
        ercAb.backgroundColor = colorGris
        ercAb.tintColor = UIColor.blue
        ercEC.backgroundColor = colorGris
        ercEC.tintColor = UIColor.blue
        
        //Cs
        csAF.backgroundColor = colorGris
        csAF.tintColor = UIColor.blue
        csAb.backgroundColor = colorGris
        csAb.tintColor = UIColor.blue
        csEC.backgroundColor = colorGris
        csEC.tintColor = UIColor.blue
        
        //PP
        ppAF.backgroundColor = colorGris
        ppAF.tintColor = UIColor.blue
        ppAb.backgroundColor = colorGris
        ppAb.tintColor = UIColor.blue
        ppEC.backgroundColor = colorGris
        ppEC.tintColor = UIColor.blue
        
        //CUP
        cupAF.backgroundColor = colorGris
        cupAF.tintColor = UIColor.blue
        cupAb.backgroundColor = colorGris
        cupAb.tintColor = UIColor.blue
        cupEC.backgroundColor = colorGris
        cupEC.tintColor = UIColor.blue
    }
    
}


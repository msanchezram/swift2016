//
//  ViewResultadoVotacionController.swift
//  concertum
//
//  Created by Marcos on 20/1/17.
//  Copyright © 2017 MSR. All rights reserved.
//

import UIKit

class ViewResultadoVotacionController: UIViewController {
    
    var listaPartidos = Array<Partido>()
    var tipoVotacion = ""
    var tipoVotacionInt = 0 //0 estandar 1 Institucional

    
    @IBOutlet weak var lTotalRegidors: UILabel!
    
    @IBOutlet weak var lTipoVotacion: UILabel!
    
    @IBOutlet weak var lAfavor: UILabel!
    @IBOutlet weak var lAbstencion: UILabel!
    @IBOutlet weak var lEncontra: UILabel!
    @IBOutlet weak var lResultadoVotacion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         
        var tmpTotalAfavor = 0
        var tmpTotalEnContra = 0
        var tmpTotalAbtencion = 0
        var tmpTotalRegidores = 0
        var tmpAprovat = false
        
        for tmpPartido in listaPartidos {
            //0 contra ; 1 abstencion ; 2 favor
            if tmpPartido.votacion == 0 {
                tmpTotalEnContra += tmpPartido.regidores
            } else if tmpPartido.votacion == 2 {
                tmpTotalAfavor += tmpPartido.regidores
            } else {
                tmpTotalAbtencion += tmpPartido.regidores
            }
            tmpTotalRegidores += tmpPartido.regidores
        }
        
        if (tipoVotacionInt == 0){
            if (tmpTotalAfavor > tmpTotalEnContra){
                tmpAprovat = true
            }
        } else {
            let tmpDosTercios = Int (2 * tmpTotalRegidores / 3)
            
            if (tmpTotalAfavor >= tmpDosTercios){
                tmpAprovat = true
            }
        }
        
        
        if (tmpAprovat){
            lResultadoVotacion.text = "Aprovada"
            lResultadoVotacion.backgroundColor = UIColor.green
        }else{
            lResultadoVotacion.text = "No Aprovada"
            lResultadoVotacion.backgroundColor = UIColor.red
        }
        
        self.lAfavor.text = String (tmpTotalAfavor)
        self.lEncontra.text = String(tmpTotalEnContra)
        self.lTotalRegidors.text = String(tmpTotalRegidores)
        self.lAbstencion.text = String(tmpTotalAbtencion)
        self.lTipoVotacion.text = tipoVotacion
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

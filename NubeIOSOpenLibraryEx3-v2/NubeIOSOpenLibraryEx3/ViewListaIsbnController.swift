//
//  ViewListaIsbnController.swift
//  NubeIOSOpenLibraryEx3
//
//  Created by Marcos on 31/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import UIKit

class ViewListaIsbnController: UITableViewController {

    private var libros = Array<String>()
    
    @IBOutlet weak var textIsbn: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.title = "Lista Libros IBSN"
        
        //self.libros.append("978-84-376-0494-7")
        //self.libros.append("978-15-897-7025-6")
        //self.libros.append("978-84-376-0494-9")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return libros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = libros[indexPath.row] as String
        return cell
    }
    
    @IBAction func pushAdd(_ sender: Any) {
        
        
        print("pushAdd")
        //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
        
        /*
        //print("Agregar ISBN \(self.textIsbn.text)")
        if (self.textIsbn.text?.isEmpty)!{
            
            let alertController = UIAlertController(title: "Error", message:
                "Es necesario informar un ISBN", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
        }else{
            self.libros.append(self.textIsbn.text!)
            
            //let vDetalleIsbn = segue.destination as! ViewDetalleIsbnController
            
            
            
            //vDetalleIsbn.isbnSearch = self.textIsbn.text!
        }
        */
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        /*
        
        */
        
        
        
        
        let indice = self.tableView.indexPathForSelectedRow?.row
        
        if (indice == nil){
            //si entra es porque ha pulsado en el añadir
            
            let tmpIsbnVacio =  self.textIsbn.text?.isEmpty
            let tmpIsbnExist = self.existsISBN(isbnToFind: textIsbn.text!)
            
            if (tmpIsbnVacio )! || tmpIsbnExist  {
                
                var msg = textIsbn.text!
                
                if (tmpIsbnVacio!) {
                    msg = "Es necesario informar un ISBN"
                } else {
                    msg = "El codigo ISBN \(msg) ya existe"
                }
                
                let alertController = UIAlertController(title: "Error", message:
                    msg, preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
            }else{
                self.libros.append(self.textIsbn.text!)
                self.tableView.reloadData()
                let vDetalleIsbn = segue.destination as! ViewDetalleIsbnController
                
                
                
                vDetalleIsbn.isbnSearch = self.textIsbn.text!
                
            }
            
        }else{
            //si entra es porque ha pulsado en el tableView
            let vDetalleIsbn = segue.destination as! ViewDetalleIsbnController
            
            vDetalleIsbn.isbnSearch = self.libros[indice!]
        }
        
        
    }
    
    func existsISBN( isbnToFind : String) -> Bool {
        if (libros.count > 0 ){
            for i in 1...libros.count {
                if (libros[i-1] == isbnToFind){
                    return true
                }
            }
        }
        return false
    }

}

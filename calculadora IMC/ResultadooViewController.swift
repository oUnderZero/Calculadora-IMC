//
//  ResultadooViewController.swift
//  calculadora IMC
//
//  Created by Mac18 on 23/10/21.
//

import UIKit

class ResultadooViewController: UIViewController {
    var valorIMC: String?
    var msj: String?
    var color: UIColor?
    var imagen: UIImage?
    var msj2: String?
    
    @IBOutlet weak var mensaje2lbl: UILabel!
    @IBOutlet weak var mensajelbl: UILabel!
    @IBOutlet weak var valorlvl: UILabel!
    @IBOutlet weak var imagenlbl: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mensajelbl.text = msj
        valorlvl.text = valorIMC
        imagenlbl.image = imagen
        mensaje2lbl.text = msj2
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

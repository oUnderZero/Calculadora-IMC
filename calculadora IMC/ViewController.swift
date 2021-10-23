//
//  ViewController.swift
//  calculadora IMC
//
//  Created by Mac18 on 23/10/21.
//

import UIKit

class ViewController: UIViewController {
    var cerebroCalculadora = cerebroIMC()
    @IBOutlet weak var slideraltura: UISlider!
    @IBOutlet weak var sliderpeso: UISlider!
    @IBOutlet weak var alturalbl: UILabel!
    @IBOutlet weak var pesolbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        alturalbl.text = "\(slideraltura.value) Cms."
        pesolbl.text = "\(sliderpeso.value) Kg."
    }
    @IBAction func calcularbtn(_ sender: Any) {
        let peso = sliderpeso.value
        let altura = slideraltura.value
        
        cerebroCalculadora.calcularIMC(peso: peso, altura: altura)
        
        
        performSegue(withIdentifier: "calcular", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcular" {
            let destino = segue.destination as! ResultadooViewController
            destino.valorIMC = cerebroCalculadora.retornarValorIMC()
            destino.msj = cerebroCalculadora.retornarMSJ()
            destino.msj2 = cerebroCalculadora.msj2
            destino.color = cerebroCalculadora.retornarColor()
            destino.imagen = cerebroCalculadora.retornarImg()
            
        }
    }
    @IBAction func PesoSliderAction(_ sender: UISlider) {
        
        //mostrar en el label el valor del slider
        
        //var balance = String(format: "%.2f", balanceNumber)
        pesolbl.text = "\(String(format: "%.1f", sender.value))  Kg."
    }
    
    @IBAction func AlturaSliderAction(_ sender: UISlider) {
        
        alturalbl.text = "\(String(format: "%.1f", sender.value))  Cms."
    }
    
}


//
//  cerebroIMC.swift
//  calculadora IMC
//
//  Created by Mac18 on 23/10/21.
//

import Foundation
import UIKit

struct cerebroIMC {
    
    var imc: objetoIMC?
    var msj2: String?
    let color: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    //metodos para hacer el calculo
    mutating func calcularIMC(peso: Float, altura: Float){
            let alturam = altura/100
        print(alturam)
        	let valorIMC = peso/(alturam * alturam)
            print(valorIMC)
        
        if (alturam <= 1.62) {
            msj2 = "Su rango de peso saludable sugerido es de 43 a 58 kg.";
           
        } else if (alturam >= 1.65 && alturam <= 1.72) {
            msj2 = "Su rango de peso saludable sugerido es de 55 a 74 kg.";
          

        } else if (alturam >= 1.72 && alturam <= 1.82) {
            msj2 = "Su rango de peso saludable sugerido es de 62 a 83 kg.";
           

        } else if (alturam >= 1.82 && alturam <= 1.93) {
            msj2 = "Su rango de peso saludable sugerido es de 62 a 83 kg.";
          

        }

        if valorIMC < 18.5 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Probabilidad de anemia", mensaje2: msj2!, color:  #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), imagen: UIImage(systemName: "1"))
            print(valorIMC)
        }
        else if valorIMC < 24.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tu IMC es noraml, Felicidades!", mensaje2: msj2!, color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(systemName: "2"))
            print(valorIMC)
            
        } else if valorIMC < 29.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes sobrepeso atencion!", mensaje2: msj2!, color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(systemName: "3"))
            print(valorIMC)
        } else {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes obesidad ", mensaje2: msj2!, color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(systemName: "4"))
            print(valorIMC)
        }
    }
    
    func retornarValorIMC() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    func retornarImg() -> UIImage {
        return imc?.imagen ?? UIImage(named: "imc")!
    }
    
    func retornarColor () -> UIColor {
        return imc?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func retornarMSJ() -> String {
        return imc?.mensaje ?? "Sin MSJ"
    }
    
    
    
    
}

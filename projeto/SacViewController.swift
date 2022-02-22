//
//  SacViewController.swift
//  projeto
//
//  Created by Lívia Oliveira on 21/02/22.
//

import UIKit

class SacViewController: UIViewController {

    @IBOutlet weak var motivo: UITextField!
    @IBOutlet weak var contato: UITextField!
    
    @IBOutlet weak var msgEnvi: UILabel!
    
    @IBAction func enviar(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Confirmação de Mensagem", message: "você tem certeza que quer enviar essa mensagem?", preferredStyle: .alert)
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            if let motivo = self.motivo.text{
                if let contato = self.contato.text{
                    
                    let valida = self.validando (motivo: motivo, contato: contato)
                    if valida{
                        self.msgEnvi.text = "Entraremos em contato em breve para mais informações"
                    } else {
                        self.msgEnvi.text = "Informe os campos acima"
                    }
                }
            }
            
        }
        alerta.addAction(cancelar)
        alerta.addAction(confirmar)
        present(alerta, animated: true, completion: nil)
    }
    
    
    
    func validando(motivo: String, contato: String) -> Bool{
        var camposValidados = true
        
        if motivo.isEmpty{
            camposValidados = false
        }else if contato.isEmpty{
            camposValidados = false
        }
        return camposValidados
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        func viewWillAppear(_ animated: Bool){
            self.navigationController?.setNavigationBarHidden(false, animated: false)
        }
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

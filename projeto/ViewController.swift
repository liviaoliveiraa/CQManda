//
//  ViewController.swift
//  projeto
//
//  Created by Lívia Oliveira on 17/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoBar: UITextField!
    
    @IBOutlet weak var infoMesa: UITextField!
    
    @IBOutlet weak var infoPedido: UITextField!
    
    @IBOutlet weak var pedidoSolicitado: UILabel!
    
    @IBAction func realizarPedido(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Confirmação de pedido", message: "Você tem certeza do pedido solicitado?", preferredStyle: .alert)
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            if let infoMesa = self.infoMesa.text{
                if let infoPedido = self.infoPedido.text{
                    if let infoBar = self.infoBar.text{
                        
                        //Validando os valores
                        let validaCampos = self.validarCampos(infoMesa: infoMesa, infoPedido: infoPedido, infoBar: infoBar)
                        if validaCampos{
                            self.pedidoSolicitado.text = "Pedido encaminhado para os nossos garçons;)"
                            
                        } else {
                            self.pedidoSolicitado.text = "Infome os campos acima!"
                            
                            
                        }
                    }
                }
            }
        }
        
        alerta.addAction(cancelar)
        alerta.addAction(confirmar)
        present(alerta, animated: true, completion: nil)
       
        
        
        
    }
    
    func validarCampos(infoMesa: String, infoPedido:String, infoBar: String) -> Bool {
        var camposValidados = true
        
        if infoMesa.isEmpty{
            camposValidados = false
        } else if infoPedido.isEmpty {
            camposValidados = false
        } else if infoBar.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}


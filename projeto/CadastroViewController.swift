//
//  CadastroViewController.swift
//  projeto
//
//  Created by Lívia Oliveira on 21/02/22.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var confirmarSenha: UITextField!
    
    func exibirMensagem(titulo: String, mensagem: String){
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let acaoCancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        alerta.addAction(acaoCancelar)
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func criarConta(_ sender: Any) {
        //if let usuario = self.usuario.text{
            if let senha = self.senha.text{
                if let confirmarSenha = self.confirmarSenha.text{
                    
                    if senha == confirmarSenha{
                        print("teste")
                        
                        
                    } else {
                        self.exibirMensagem(titulo: "Dados Incorretos", mensagem: "As senhas não estão iguais, digite novamente")
                        
                    }
                }
                    
            }
        //}
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

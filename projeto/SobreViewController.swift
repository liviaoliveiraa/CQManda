//
//  SobreViewController.swift
//  projeto
//
//  Created by Lívia Oliveira on 19/02/22.
//

import UIKit

class SobreViewController: UIViewController {
    
    
    @IBAction func phone(_ sender: Any) {
        
        infoPhone.text = "(11)0000-0000"
    }
    
    @IBAction func email(_ sender: Any) {
        
        infoEmail.text = "cqmanda@hotmail.com"
        
    }
    
    @IBAction func instagram(_ sender: Any) {
        
        infoInsta.text = "@CQManda"
    }
    
    @IBOutlet weak var infoPhone: UILabel!
    
    @IBOutlet weak var infoEmail: UILabel!
    
    @IBOutlet weak var infoInsta: UILabel!
    
    
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

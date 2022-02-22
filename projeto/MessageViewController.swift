//
//  MessageViewController.swift
//  projeto
//
//  Created by Lívia Oliveira on 20/02/22.
//

import UIKit

class MessageViewController: UIViewController {

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

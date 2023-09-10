//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by Abhishek Jadaun on 10/09/23.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        @IBAction func registerPressed(_ sender: UIButton) {
            //if because email and password have data of type string then go further
            if let email = inputEmail.text, let password = inputPassword.text {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let e = error{
                        print(e.localizedDescription)
                    } else{
                        // navigate to nextscreen
                        self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                    }
            }
        }
    }
    
}

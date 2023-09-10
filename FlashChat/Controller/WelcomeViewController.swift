//
//  WelcomeViewController.swift
//  FlashChat
//
//  Created by Abhishek Jadaun on 10/09/23.
//

import Foundation
import UIKit
import CLTypingLabel
class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    // to hide navigation bar on welcomeviewcontroller screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "⚡️FlashChat"
    }
    
}

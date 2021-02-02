//
//  OptionAViewController.swift
//  CodeOnly
//
//  Created by Greg Price on 02/02/2021.
//

import UIKit

class OptionAViewController: UIViewController {
    
    var emailTextField: UITextField!
    var passwordTextField: UITextField!
    var confirmTextField: UITextField!
    var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildUI()
    }
}

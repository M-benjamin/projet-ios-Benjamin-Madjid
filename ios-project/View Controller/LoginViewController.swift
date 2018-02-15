//
//  LoginViewController.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignInViewDelegate {
    
//    func loginDidTapped -> () String, String {
//        return "ben"
//    }
    
    
    @IBOutlet var signInView: SignInView!
    @IBOutlet var signUpView: SignUpView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signInView.delegate = self
    }
    
    // -> SignUpViewProtocol
    
    
    func getMail() -> String {
        return "ben@mail.com"
    }
    
    func getPass() -> String {
        return "1234"
    }

  
}

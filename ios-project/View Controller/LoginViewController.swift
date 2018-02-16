//
//  LoginViewController.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignInViewDelegate, SignUpViewDelegate {
    
    // -> Instance declaration
    // ------------------------------
    let staticU = StaticUser.intance
    
    // -> Set value of user when Sign in
    // ------------------------------------------------------------
    func signInDidTapped(email: String, password: String) {
        
        if password==""  {
            let alertController = UIAlertController(title: "alert", message:
                "mot de passe vide ", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }else if email == ""{
            let alertController = UIAlertController(title: "alert", message:
                "email vide ", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        } else if (password == self.staticU.userInfo.password && email == self.staticU.userInfo.email ) {
            let alertController = UIAlertController(title: "message", message:
                "connexion réussie ", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
        }
    }
    
    
    

    // -> Set value of user when Sign up
    // ------------------------------------------------------------
    func sighUpDidTapped(email: String, password: String, conpasswd: String) {
        if email == "" {
            let alertController = UIAlertController(title: "alert", message:
                "email vide ", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }else{
        
        self.staticU.userInfo.email = email
        }
        
        
        if password == conpasswd {
            self.staticU.userInfo.password = password
            
            print("tes"+self.staticU.userInfo.password)
            print("test2"+self.staticU.userInfo.email)
        }
        
        let alertController = UIAlertController(title: "message", message:
            "inscription  réussie ", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        signUpView.isHidden = true
    }

    
    
    @IBOutlet var signInView: SignInView!
    @IBOutlet var signUpView: SignUpView!
    
    // -> Go to register from sign in page
    // --------------------------------------------------------------
    func goToRegister() {
        // do something
        signUpView.isHidden = false
    }
    
    // -> go to login from sign up page
    func goToLogin() {
        signUpView.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signInView.delegate = self
        signUpView.delegate = self
        
//        self.staticU.userInfo.email = "madjid"
//
//        print(self.staticU.userInfo.email)
       
    }
    
}

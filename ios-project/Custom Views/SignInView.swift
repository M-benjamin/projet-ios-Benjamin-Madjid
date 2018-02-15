//
//  SignInView.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

class SignInView: UIView {
    
    var delegate: SignInViewDelegate?
    
//    func loginAction() {
//        if let del = delegate {
//            print(del.loginDidTapped(email: "ben@mail.com", password: "ben"))
//        } else {
//            print("Delegate not found")
//        }
//    }
    
    @IBAction func RegisterIn(_ sender: UIButton) {
    }
    @IBAction func loginIn(_ sender: UIButton) {
    }
    @IBOutlet weak var passIn: UITextField!
    @IBOutlet weak var mailIn: UITextField!
    func printMail()  {
        if let del = delegate {
            print(del.getMail)
        } else {
            print("Delegate not found")
        }
    }
    
    func printPass()  {
        if let del = delegate {
            print(del.getPass())
        } else {
            print("Delegate not found")
        }
    }
    
    @IBOutlet var LoginView: UIView!
 
    
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignInView", owner: self, options: nil)
        addSubview(LoginView)
        LoginView.frame=self.bounds
        LoginView.autoresizingMask = [.flexibleHeight , .flexibleWidth]
        
    }
    
   

}

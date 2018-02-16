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
    

    
    @IBAction func RegisterIn(_ sender: UIButton) {
        delegate?.goToRegister()
//        print("test login")
    }
    
    @IBOutlet weak var passIn: UITextField!
    @IBOutlet weak var mailIn: UITextField!
    
    
    
    @IBAction func loginIn(_ sender: Any) {
        if delegate != nil {
            if (mailIn != nil && passIn != nil) {
                let mailInput = mailIn.text
                let passInput = passIn.text
                
                delegate?.signInDidTapped(email: mailInput!, password: passInput!)
            }
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

extension LoginViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

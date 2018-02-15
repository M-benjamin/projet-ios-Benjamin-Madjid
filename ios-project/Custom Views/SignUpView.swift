//
//  SignUpView.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

class SignUpView: UIView {

    @IBOutlet var signUp: UIView!
    
    @IBOutlet weak var mailUpField: UITextField!
    
    @IBOutlet weak var passUpField: UITextField!
    
    @IBOutlet weak var conPassUpField: UITextField!
    
    
    @IBAction func upButton(_ sender: Any) {
    }
    
    @IBAction func logUpButton(_ sender: Any) {
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)
        addSubview(signUp)
        signUp.frame=self.bounds
        signUp.autoresizingMask = [.flexibleHeight , .flexibleWidth]
        
    }

}

//
//  SignUpViewDelegate.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

protocol SignUpViewDelegate{
    // -> when click on sign up button
    // ---------------------------------
    func sighUpDidTapped(email: String, password: String, conpasswd: String)
    
    // -> for redirect on login view
    //----------------------------------
    func goToLogin()
}

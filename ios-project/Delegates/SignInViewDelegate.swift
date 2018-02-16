//
//  SignInViewDelegate.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

protocol SignInViewDelegate{
    // -> when click on sign up button
    // ---------------------------------
    func signInDidTapped(email: String, password: String)
    
    func goToRegister()
}

//
//  SignInViewDelegate.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

import UIKit

protocol SignInViewDelegate{
//    func loginDidTapped(email:String, password:String)
    func getMail() -> String
    func getPass() -> String
}

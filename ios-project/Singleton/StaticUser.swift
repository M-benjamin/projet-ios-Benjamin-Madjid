//
//  StaticUser.swift
//  ios-project
//
//  Created by Efrei Paris on 15/02/2018.
//  Copyright © 2018 Efrei Paris. All rights reserved.
//

class StaticUser {
    static let intance: StaticUser = StaticUser()
    
    var name: String =  ""
    
    func saveNameIntoStaticUser(name: String) {
        StaticUser.intance.name = name
    }
}

//StaticUser.intance.saveNameIntoStaticUser(name: "Ben")


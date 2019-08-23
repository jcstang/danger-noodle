//
//  Pet.swift
//  danger-noodle
//
//  Created by Jake Stanger on 8/23/19.
//  Copyright © 2019 Jake Stanger. All rights reserved.
//

import Foundation

class Pet {
    
    //Declare your model variables here
    var name: String
    var birthdate: Date
    var age: Int
    
    init() {
        name = "Bingo"
        birthdate = Date.distantPast
        age = 1
    }
    
    convenience init(petName: String, bday: Date) {
        self.init()
        name = petName
        birthdate = bday
    }
    
    convenience init(bday: Date) {
        self.init()
        birthdate = bday
    }
    
    func run() {
        print("\(self.name) is running!")
    }
    
}

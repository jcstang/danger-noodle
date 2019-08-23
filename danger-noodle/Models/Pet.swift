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
    var age: Int {

        let now = Date()
        let ageComponents = Calendar.current.dateComponents([.year], from: self.birthdate, to: now)

        //TODO: check for errors
        print(self.birthdate)
        print(ageComponents.year!)
        
       
        
        
        return ageComponents.year!
    }
    
    
    //MARK: Initilizers are all here
    init() {
        name = "Bingo"
        birthdate = Date.init()
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
    
    convenience init(year: Int, month: Int, day: Int, timeZoneAbbreviation: String) {
        self.init()
        
        // Specify date components
        var bdayComponents = DateComponents()
        bdayComponents.year = year
        bdayComponents.month = month
        bdayComponents.day = day
        bdayComponents.timeZone = TimeZone(abbreviation: timeZoneAbbreviation) // example: MST, CST, EST
        
        // Create date from components
        let userCalendar = Calendar.current // user calendar
        
        // set if everything is good else init todays date
        birthdate = userCalendar.date(from: bdayComponents) ?? Date.init()
        
    }
    
    
    func run() {
        print("\(self.name) is running!")
    }
    
}

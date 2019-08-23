//
//  Pet.swift
//  danger-noodle
//
//  Created by Jake Stanger on 8/23/19.
//  Copyright © 2019 Jake Stanger. All rights reserved.
//  "Read-only computed property" are used in this file
//  find documentation on this topic at docs.swift.org/swift-book/LanguageGuide/Properties.html
//  more more more comments
//

import Foundation

class Pet {
    
    //Declare your model variables here
    var name: String
    var birthdate: Date
    // read-only computed property
    var age: Int {

        let now = Date()
        let ageComponents = Calendar.current.dateComponents([.year], from: self.birthdate, to: now)

        return ageComponents.year!
    }
    
    
    //MARK: Initilizers are all here
    init(name: String) {
        self.name = name
        birthdate = Date.init()
    }
    
    convenience init(chosenName: String, bday: Date) {
        self.init(name: chosenName)
        birthdate = bday
    }
    
    convenience init(chosenName: String, year: Int, month: Int, day: Int, timeZoneAbbreviation: String) {
        self.init(name: chosenName)
        
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

//
//  Snake.swift
//  danger-noodle
//
//  Created by Jake Stanger on 8/23/19.
//  Copyright © 2019 Jake Stanger. All rights reserved.
//

import Foundation

enum Breed {
    case WesternHognose
    case BallPython
    case KenyanSandBoa
    case RedTailBoa
}

class Snake: Pet {
    
    var breed: Breed
    
    override init() {
        self.breed = .BallPython
        super.init(name: "Bobby")
    }
    
    init(chosenName: String, breedType: Breed) {
        self.breed = breedType
        super.init(name: chosenName)
    }
    
//    init(breedType: Breed) {
//        self.breed = breedType
//        super.init()
//    }
    
//    init(chosenName: String, breedType: Breed) {
//        self.breed = breedType
//        super.init(name: chosenName)
//    }
    

    
    
}


/*
 class Goblin: NonPlayerCharacter {
 var weapon : Int = 0
 
 convenience init(health: Int, power: Int, weapon: Int) {
 self.init(health: health, power: power)
 self.weapon = weapon
 }
 
 override func attack() -> String {
 return "attack from Goblin"
 }
 }
 */

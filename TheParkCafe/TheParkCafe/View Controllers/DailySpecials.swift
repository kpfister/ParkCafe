//
//  DailySpecials.swift
//  The Park Cafe
//
//  Created by Karl Pfister on 2/17/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation

class DailySpecials {
    
    var name: String
    var description: String?
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
//    static public func special(day: String) -> ([String:String]) {
//        switch day {
//        case "Monday":
//            return (["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito", "price":"$4.99"])
//        case "Tuesday":
//            return(["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito"])
//        case "Wednesday":
//            return (["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito"])
//        case "Thursday":
//            return (["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito"])
//        case "Friday":
//            return (["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito"])
//        case "Saturday":
//            return (["name": "Itsz saturday", "description":"idk"])
//        case "Sunday":
//            return (["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito"])
//        default: return (["name": "Eggs Benedict", "description":"BFB (Big Fucking Burrito"])
//        }
//    }
    
//    let date = Date()
//    let formatter = DateFormatter()
//    formatter.dateFormat = "EEEE"
//    let day = formatter.string(from: date)
//    print(day)
//
//    print(special(day: day))
    
}

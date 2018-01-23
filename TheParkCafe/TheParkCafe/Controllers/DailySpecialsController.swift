//
//  DailySpecialsController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/22/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation

struct DailySpecialsController {
    
    
    enum DailyBreakfastSpecials: String {
        case Monday = "Don Jose Breakfast Burrito. Two eggs scrambled with chorizo sausage, onion, tomato and green pepper. Topped with queso fresco and tomatillo salsa and served with Park Potatoes"
        case Tuesday = "Eggs Benedict. Two poached eggs served on top of grilled ham and tomato on a toasted English muffin."
        case Wednesday = "Country Fried Steak and Eggs. Smothered with sausage gravy and served with two eggs, Park Potatoes and toast."
        case Thursday = "Utah Omelet. Spicy ground beef, onion, green pepper and mushroom. Topped with Cheddar, and served with Park Potatoes and toast."
        case Friday = "Joshie Boy Omelet. Sausage, onion, green pepper, mushroom, green chilies, pepper jack and salsa stuffed into a three egg omelet. Topped with cheddar and served with Park potatoes and toast."
        case Saturday = "Huevos Rancheros. Home made refried black beans topped with crumbled Queso Fresco and served with two eggs, Park Potatoes, flour tortillas and salsa. Add some slow-roasted pork for extra goodness!"
        case Sunday = "Corn Beef Hash. Slow roasted homemade corn beef, shredded and grilled with onion, mushroom, green pepper and Park Potatoes. Topped with cheddar and two eggs. Served with toast"
    }
    
    
//    enum DailySpecials {
//        case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
//
//        func displayBreakfastSpecials(day: String) -> String {
//            switch self {
//            case .Monday:
//                return "This One thing"
//           case .Tuesday:
//                return "I dont know what day it is"
//            case .Wednesday:
//               return "Something"
//            case .Thursday:
//               return  ""
//            case .Friday:
//                return "idk"
//            case .Saturday:
//                return "Saturday:"
//            case .Sunday:
//                return "Sunday"
//            }
//        }
//    }
     public func getCurrentDay() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: Date()).capitalized
    }
    
    
    
}


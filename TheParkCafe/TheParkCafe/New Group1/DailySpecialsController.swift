//
//  DailySpecialsController.swift
//  The Park Cafe
//
//  Created by Karl Pfister on 2/17/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation

class DailySpecialsController {
    // NATHAN:  Kinda a lot going on here. Maybe mark or comment to separate this code out
    static let mondayBreakfast = DailySpecials(name: "Don Jose Breakfast Burrito", description: "Two eggs scrambled with chorizo sausage, onion, green pepper, and tomato. Topped with tomatillo salsa and crumbled Queso Fresco, and served with Park Potatoes.")
    static let mondayLunch = DailySpecials(name: "The Darth Burger.", description: "Topped with bacon, grilled onion, and an evilly delicious chipotle mayo. Served with Park Potatoes and a cup of chicken noodle soup.")
    
    static let mondaySpecials = [mondayBreakfast,mondayLunch]
    
    static let tuesdayBreakfast = DailySpecials(name: "Eggs Benedict", description: "Two poached eggs served on top of grilled ham and tomato on a toasted English muffin. Topped with Hollandaise sauce and served with a side of Park potatoes.")
    static let tuesdayLunch = DailySpecials(name: "Juan’s Spicy Tuna Melt", description: "Grilled tuna salad with diced jalapeño and corn. Topped with melted Provolone on a hoagie roll. Served with Park Potatoes and a cup our favorite, Chicken Tortilla soup")
    
    static let tuesdaySpecials = [tuesdayBreakfast,tuesdayLunch]
    
    static let wednesdayBreakfast = DailySpecials(name: "Country Fried Steak and Eggs", description: "Smothered with sausage gravy, served with two eggs, Park Potatoes and toast.")
    static let wednesdayLunch = DailySpecials(name: "Kid Buu's BBQ Bacon Chicken Sandwich", description: "Topped with BBQ sauce, cheddar cheese, bacon and crispy onion straws. Served with Park Potatoes and a cup of beef barley soup.")
    
    static let wednesdaySpecials = [wednesdayBreakfast,wednesdayLunch]
    
    
    static let thursdayBreakfast = DailySpecials(name: "Utah Omelet", description: "Spicy ground beef, onion, green pepper and mushroom. Topped with Cheddar, and served with Park Potatoes and toast.")
    static let thursdayLunch = DailySpecials(name: "The Lothar Reuben", description: "Slow roasted corn beef, sauerkraut, and Swiss on grilled rye. Served with Park potatoes and a cup of creamy tomato soup.")
    
    static let thursdaySpecials = [thursdayBreakfast,thursdayLunch]
    
    static let fridayBreakfast = DailySpecials(name: "Joshie Boy Omelet", description: " Sausage, onion, green pepper, mushroom, green chilies, pepper jack and salsa stuffed into a three egg omelet. Topped with cheddar and served with Park potatoes and toast.")
    static let fridayLunch = DailySpecials(name: "Woody’s Western Bacon Cheeseburger", description: "Topped with bbq sauce, Cheddar, bacon and crispy onion. Served with Park Potatoes and a cup of chicken tortilla soup.")
    
    static let fridaySpecials = [fridayBreakfast,fridayLunch]
    
    static let saturdayBreakfast = DailySpecials(name: "Huevos Rancheros", description: "Home made refried black beans topped with crumbled Queso Fresco and served with two eggs, Park Potatoes, flour tortillas and salsa. Add some slow-roasted pork for extra goodness!")
    static let saturdaySpecials = [saturdayBreakfast]
    
    static let sundayBreakfast = DailySpecials(name: "Corn Beef Hash", description: "Slow roasted homemade corn beef, shredded and grilled with onion, mushroom, green pepper and Park Potatoes. Topped with cheddar and two eggs. Served with toast.")
    
    static let sundaySecials = [sundayBreakfast]
    
    static public func special(day: String) -> ([DailySpecials]) {
        switch day {
        case "Monday":
            return (mondaySpecials)
        case "Tuesday":
            return(tuesdaySpecials)
        case "Wednesday":
            return (wednesdaySpecials)
        case "Thursday":
            return (thursdaySpecials)
        case "Friday":
            return (fridaySpecials)
        case "Saturday":
            return (saturdaySpecials)
        case "Sunday":
            return (sundaySecials)
        default: return (sundaySecials)
        }
    }
}


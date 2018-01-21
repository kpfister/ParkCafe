//
//  ApplicationMenuItems.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/20/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation
import UIKit

class MenuItems {
    
    var name: String
    var price: String
    var description: String?
    var photo: UIImage?
    
    init(price: String, description: String?, name: String, photo: UIImage?) {
        self.name = name
        self.price = price
        self.description = description
        self.photo = photo
    }
}

// Omeletes
let cheeseOmelet = MenuItems(price: "$6.25", description: nil, name: "Cheese", photo: nil)
let hamAndCheeseOmelete = MenuItems(price: "7.50", description: nil, name: "Ham & Cheese", photo: nil)
let mushroomAndCheese = MenuItems(price: "7.25", description: nil, name: "Mushroom & Cheese", photo: nil)
let broncoOmelete = MenuItems(price: "7.95", description: "Ham, Peppers, Onions, Mushrooms and Cheddar Cheese", name: "Bronco", photo: nil)
let jazzOmelete = MenuItems(price: "7.95", description: "Bacon, Peppers, Onions, Mushrooms and Cheedar Cheese", name: "Jazz", photo: nil)
let veggieOmelete = MenuItems(price: "7.95", description: "Tomatoes, Peppers, Onions, Mushrooms and Cheedar Cheese", name: "Veggie", photo: nil)
let spanishOmelete = MenuItems(price: "$7.95", description: "Peppers, Onions, Mushrooms and Cheddar Cheese", name: "Spanish", photo: nil)
let odelay = MenuItems(price: "$7.95", description: "Sausage, Peppers, Onions, Mushrooms and Cheddar Cheese", name: "Odelay", photo: nil)

let omelets = [cheeseOmelet,hamAndCheeseOmelete,mushroomAndCheese,broncoOmelete,jazzOmelete,veggieOmelete,spanishOmelete,odelay]

// Breakfast Specials
let theSingle = MenuItems(price: "$5.25", description: "Two eggs any style", name: "The Single", photo: nil)
let doublePlay = MenuItems(price: "6.75", description: "Ham, Bacon, or Two Sausage, & Two eggs", name: "Double Play", photo: nil)
let fieldGoal = MenuItems(price: "6.50", description: "Two eggs scrambeled with diced Ham", name: "Field Goal", photo: nil)
let basesLoaded = MenuItems(price: "$9.50", description: "Breakfast Steak or Pork Chops & Two eggs", name: "Bases Loaded", photo: nil)
let michiganHash = MenuItems(price: "$7.50", description: "Park Potatoes mixed with Sausage, Onions, Mushrooms, Peppers, topped with Cheddar Cheese & Two eggs", name: "Michigan Hash", photo: nil)

let breakfastSpecials = [theSingle,doublePlay,fieldGoal,basesLoaded,michiganHash]

// Other Breakfast
let frenchToastFoolishness = MenuItems(price: "$8.50", description: "Two slices of French Toast, Two eggs, Two pieces of Bacon and Park Potatoes", name: "French Toast Foolishness", photo: nil)
let pancakeSandwich = MenuItems(price: "$7.50", description: "Four pieces of Bacon and Two Eggs between Two Pancakes", name: "Pancake Sandwich", photo: nil)
let frenchToast = MenuItems(price: "$4.25, $5.25", description: "Two slices or three slices of French Toast", name: "French Toast", photo: nil)
let pancakes = MenuItems(price: "$4.00, $5.00", description: "Short stack or a full stack of Pancakes. Buttermilk or Multi-grain", name: "Pancakes", photo: nil)
let specalityPancakes = MenuItems(price: "$5.00, $6.00", description: "Short stack or full stack of specality pancakes. Blueberry or Banana", name: "Specality Pancakes", photo: nil)
let oatmeal = MenuItems(price: "$3.75, $4.75", description: "Plain oatmeal, add Banannas and Raisins", name: "Oatmeal", photo: nil)
let shootersSandwich = MenuItems(price: "$7.25", description: "Two eggs, Cheddar Cheese and Ham, Bacon, or Sausage on grilled Bread with Park Potatoes", name: "Shooters Sandwich", photo: nil)
let buscuitsAndGravy = MenuItems(price: "$7.95", description: "Two Biscuits topped with sausage gracy. Two Eggs, Two peices of sausage, and Park Potatoes", name: "Buscuits & Gravy", photo: nil)
let boulderGranola = MenuItems(price: "4.95", description: "Granola with Yogurt and Bananna", name: "Boulder Granola", photo: nil)

let otherBreakfast = [frenchToastFoolishness,pancakeSandwich,frenchToast,pancakes,specalityPancakes,oatmeal,shootersSandwich,buscuitsAndGravy,boulderGranola]



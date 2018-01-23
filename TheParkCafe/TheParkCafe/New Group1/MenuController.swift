//
//  MenuController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/23/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation

struct MenuController {
    
    // Omeletes
    static let cheeseOmelet = MenuItems(price: "$6.25", description: nil, name: "Cheese", photo: nil)
    static let hamAndCheeseOmelete = MenuItems(price: "7.50", description: nil, name: "Ham & Cheese", photo: nil)
    static let mushroomAndCheese = MenuItems(price: "7.25", description: nil, name: "Mushroom & Cheese", photo: nil)
    static let broncoOmelete = MenuItems(price: "7.95", description: "Ham, Peppers, Onions, Mushrooms and Cheddar Cheese", name: "Bronco", photo: nil)
    static let jazzOmelete = MenuItems(price: "7.95", description: "Bacon, Peppers, Onions, Mushrooms and Cheedar Cheese", name: "Jazz", photo: nil)
    static let veggieOmelete = MenuItems(price: "7.95", description: "Tomatoes, Peppers, Onions, Mushrooms and Cheedar Cheese", name: "Veggie", photo: nil)
    static let spanishOmelete = MenuItems(price: "$7.95", description: "Peppers, Onions, Mushrooms and Cheddar Cheese", name: "Spanish", photo: nil)
    static let odelay = MenuItems(price: "$7.95", description: "Sausage, Peppers, Onions, Mushrooms and Cheddar Cheese", name: "Odelay", photo: nil)
    
    static let omelets = [cheeseOmelet,hamAndCheeseOmelete,mushroomAndCheese,broncoOmelete,jazzOmelete,veggieOmelete,spanishOmelete,odelay]
    
    // Breakfast Specials
    static let theSingle = MenuItems(price: "$5.25", description: "Two eggs any style", name: "The Single", photo: nil)
    static let doublePlay = MenuItems(price: "6.75", description: "Ham, Bacon, or Two Sausage, & Two eggs", name: "Double Play", photo: nil)
    static let fieldGoal = MenuItems(price: "6.50", description: "Two eggs scrambeled with diced Ham", name: "Field Goal", photo: nil)
    static let basesLoaded = MenuItems(price: "$9.50", description: "Breakfast Steak or Pork Chops & Two eggs", name: "Bases Loaded", photo: nil)
    static let michiganHash = MenuItems(price: "$7.50", description: "Park Potatoes mixed with Sausage, Onions, Mushrooms, Peppers, topped with Cheddar Cheese & Two eggs", name: "Michigan Hash", photo: nil)
    
    static let breakfastSpecials = [theSingle,doublePlay,fieldGoal,basesLoaded,michiganHash]
    
    // Other Breakfast
    static let frenchToastFoolishness = MenuItems(price: "$8.50", description: "Two slices of French Toast, Two eggs, Two pieces of Bacon and Park Potatoes", name: "French Toast Foolishness", photo: nil)
    static let pancakeSandwich = MenuItems(price: "$7.50", description: "Four pieces of Bacon and Two Eggs between Two Pancakes", name: "Pancake Sandwich", photo: nil)
    static let frenchToast = MenuItems(price: "$4.25, $5.25", description: "Two slices or three slices of French Toast", name: "French Toast", photo: nil)
    static let pancakes = MenuItems(price: "$4.00, $5.00", description: "Short stack or a full stack of Pancakes. Buttermilk or Multi-grain", name: "Pancakes", photo: nil)
    static let specalityPancakes = MenuItems(price: "$5.00, $6.00", description: "Short stack or full stack of specality pancakes. Blueberry or Banana", name: "Specality Pancakes", photo: nil)
    static let oatmeal = MenuItems(price: "$3.75, $4.75", description: "Plain oatmeal, add Banannas and Raisins", name: "Oatmeal", photo: nil)
    static let shootersSandwich = MenuItems(price: "$7.25", description: "Two eggs, Cheddar Cheese and Ham, Bacon, or Sausage on grilled Bread with Park Potatoes", name: "Shooters Sandwich", photo: nil)
    static let buscuitsAndGravy = MenuItems(price: "$7.95", description: "Two Biscuits topped with sausage gracy. Two Eggs, Two peices of sausage, and Park Potatoes", name: "Buscuits & Gravy", photo: nil)
    static let boulderGranola = MenuItems(price: "4.95", description: "Granola with Yogurt and Bananna", name: "Boulder Granola", photo: nil)
    
    static let otherBreakfast = [frenchToastFoolishness,pancakeSandwich,frenchToast,pancakes,specalityPancakes,oatmeal,shootersSandwich,buscuitsAndGravy,boulderGranola]
    
    

}

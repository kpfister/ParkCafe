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
    static let cheeseOmelet = MenuItems(price: "$7.00", description: "Cheese on the inside and on top", name: "Cheese", photo: nil)
    static let mushroomAndCheese = MenuItems(price: "$8.00", description: "Grilled Mushrooms and Cheese inside", name: "Mushroom & Cheese", photo: nil)
    static let hamAndCheeseOmelete = MenuItems(price: "$8.00", description: "Grilled Ham and Cheese inside", name: "Ham & Cheese", photo: nil)
    static let broncoOmelete = MenuItems(price: "$8.50", description: "Ham, Onions, Green Peppers, and Mushrooms", name: "Bronco", photo: nil)
    static let jazzOmelete = MenuItems(price: "$8.50", description: "Bacon, Onions, Green Peppers, and Mushrooms", name: "Jazz", photo: nil)
    static let veggieOmelete = MenuItems(price: "$8.50", description: "Tomatoes, Onions, Green Peppers, and Mushrooms", name: "Veggie", photo: nil)
    static let spanishOmelete = MenuItems(price: "$8.50", description: "Onions, Green Peppers, Mushrooms and Salsa", name: "Spanish", photo: nil)
    static let odelay = MenuItems(price: "$8.50", description: "Sausage, Onions, Green Peppers, Mushrooms and Salsa", name: "Odelay", photo: nil)
    
    static let omelets = [cheeseOmelet,mushroomAndCheese,hamAndCheeseOmelete,broncoOmelete,jazzOmelete,veggieOmelete,spanishOmelete,odelay]
    
    // Breakfast Stuffs
    static let theSingle = MenuItems(price: "$5.50", description: "Two eggs cooked any style", name: "The Single", photo: nil)
    static let doublePlay = MenuItems(price: "7.50", description: "Two eggs and your choise of Ham, Bacon, or Sausage", name: "Double Play", photo: nil)
    static let fieldGoal = MenuItems(price: "7.00", description: "Two eggs scrambeled with diced Ham", name: "Field Goal", photo: nil)
    static let basesLoaded = MenuItems(price: "$11.00", description: "Breakfast Steak or Pork Chops served with Two eggs", name: "Bases Loaded", photo: nil)
    
    static let breakfastStuffs = [theSingle,doublePlay,fieldGoal,basesLoaded]
    
    // More Breakfast Stuffs
    static let gustavosBurrito = MenuItems(price: "$8.00", description: "Two Eggs scrambled with Tomato, Onions, and Green Peppers. Smothered with our Park Chile Verde and Queso Fresco. Served with Park Potatoes", name: "Gustavo's Burrito", photo: nil)
    static let michiganHash = MenuItems(price: "$8.00", description: "Sausage, Onions, Green Peppers, and Grilled Mushrooms with Park Potatoes topped with Two Eggs and Cheddar Cheese", name: "Michigan Hash", photo: nil)
    static let frenchToastFoolishness = MenuItems(price: "$9.00", description: "Two slices of French Toast, Two eggs, Two pieces of Bacon and Park Potatoes", name: "FTF (French Toast Foolishness)", photo: nil)
    static let pancakeSandwich = MenuItems(price: "$8.50", description: "Two Eggs and a sice of Bacon, Sausage, or Ham served between two plaste sized Pancakes. (Breakfast meats and eggs can be served on the side for the less adventurous)", name: "Pancake Sandwich", photo: nil)
    static let shootersSandwich = MenuItems(price: "$8.00", description: "Ham, Bacon, or Sausage, Cheddar Cheese and Two Eggs cooked any style on a Grilled Sandwich. Served with Park Potatoes", name: "Shooters Sandwich", photo: nil)
    static let buscuitsAndGravy = MenuItems(price: "$7.95", description: "Two Buttermilk Biscuits smothered wtih Sausage Gravy. Served with Two Eggs, Two Sausage links and Park Potatoes", name: "B's and G's", photo: nil)
    static let huevosMexicanos = MenuItems(price: "$8.00", description: "Two Eggs scrambled with Chorizo Sausage, Onions, Green Peppers, and Tomatoes. Topped with Queso Fresco and served with Park Potatoes, Totillas, and Tomatillo Salsa", name: "Huevos Mexicanos", photo: nil)
    
    static let moreBreakfastStuffs = [frenchToastFoolishness,pancakeSandwich,shootersSandwich,buscuitsAndGravy,huevosMexicanos]
    
    // Sweets and Stuffs
    static let frenchToast = MenuItems(price: "$5.00 - $6.00", description: "Two slices or three slices of French Toast", name: "French Toast", photo: nil)
    static let pancakes = MenuItems(price: "$5.00 - $6.00", description: "Short stack(2) or a full stack of Pancakes(4). Add Bananas or Blueberries for $1", name: "Pancakes", photo: nil)
    static let oats = MenuItems(price: "$4.00 - $5.00", description: "Plain oatmeal($4), with Bananas or Raisins($4.50), with Bananas and Raisins($5.00)", name: "Oats", photo: nil)
    static let granolaAndYogurt = MenuItems(price: "$6.00", description: "Vanilla Yogurt topped with Granola and sliced Bananas", name: "Granola and Yogurt", photo: nil)
    
    static let sweetsAndStuffs = [frenchToast,pancakes,oats,granolaAndYogurt]
    
    // Hamburgers and Sandwiches
    static let superBurger = MenuItems(price: "6.00", description: "1/2 Pound Ground Sirloin patty, served with Lettice, Tomato, Onion, and Pickles on the side. add Cheese($.50), add Cheese and Bacon($1.75)", name: "Super Burger", photo: nil)
    static let oliversBleu = MenuItems(price: "$7.75", description: "1/2 Pound Ground Sirloin patty smothered with Bleu Cheese Dressing and topped with Bacon", name: "Oliver's Bleu Cheese Burger", photo: nil)
    static let miggysBurger = MenuItems(price: "8.00", description: "1/2 Pound Ground Sirloin patty smothered with Pork Chile Verde and topped with Shredded Cheese", name: "Miggy's Chile Verde Cheeseburger", photo: nil)
    static let blt = MenuItems(price: "$6.00", description: "Bacon, Lettuce, Tomatoes and Mayo, on your choice of bread. add Turkey ($1.50)", name: "BLT", photo: nil)
    static let deliSandwich = MenuItems(price: "6.00", description: "Your choice of Ham,Turkey, or Tuna on your choice of bread. With Cheddar Cheese, Lettuce, Tomatoes, and Mayo - Please specify if you would like your bread toasted", name: "Deli Sandwich", photo: nil)
    static let club = MenuItems(price: "$7.75", description: "Ham, Turkey, Bacon, Tomato, Lettuce and Mayo on your choice of Toasted Bread. add Cheese($0.50)", name: "Club Sandwich", photo: nil)
    static let pattyMelt = MenuItems(price: "$7.00", description: "1/2 Pound Ground Sirloin patty, Grilled Onions, and melted Swiss Cheese on Grilled Rye Bread. add Grilled Mushrooms($0.50)", name: "Patty Melt", photo: nil)
    static let tunaMelt = MenuItems(price: "$7.00", description: "Grilled Tuna Salad, topped with Melted Provolone. Served on a Hoagie Roll", name: "Tuna Melt", photo: nil)
    static let turkeyBaconMelt = MenuItems(price: "$8.00", description: "Grilled Deli-Sliced Turkey Breast, Grilled Onions, Mushrooms, Bacon, and Melted Provolone on a Hoagie Roll", name: "Turkey Bacon Melt", photo: nil)
    
    static let hamburgersAndSandiwches = [superBurger,oliversBleu,miggysBurger,blt,deliSandwich,club,pattyMelt,tunaMelt,turkeyBaconMelt]
    
    // Soups and Salads
    static let homemadeSoup = MenuItems(price: "$3.50 - $4.50", description: "Yummy Homemade Soup! Available weekdays only", name: "Homemade Soup", photo: nil)
    static let homemadeChili = MenuItems(price: "$4.00 - $5.00", description: "Traditional Red or Chile Verde", name: "Homemade Chili", photo: nil)
    static let chefSalad = MenuItems(price: "$6.50 - $7.50", description: "Ham, Turkey, Carrots, Tomatoes, Cucumbers, Onions, Cheese, Croutons, Hard-boiled Egg, on a bed of Chopped Romaine Lettuce", name: "Chef Salad", photo: nil)
    static let theBigSalad = MenuItems(price: "$6.50", description: "Tomatoes, Carrots, Celery, Broccoli, Cucumber, Onions, Cheese and Croutons on a bed of Romaine Lettuce", name: "The Big Salad", photo: nil)
    static let sideSalad = MenuItems(price: "$3.75", description: "Tomatoes, Carrots, Cucumbers, Cheese, and Croutons on a bed of Romaine Lettuce", name: "Side Salad", photo: nil)
    static let ccccomboBreaker = MenuItems(price: "$6.75", description: "Cup of Soup/Side Salad Combo - Weekdays only", name: "Cup of Soup/Side Salad Combo", photo: nil)
    
    static let soupsAndSalads = [homemadeSoup,homemadeChili,chefSalad,theBigSalad,sideSalad,ccccomboBreaker]
    
    // Short Orders
    static let theMeats = MenuItems(price: "$3.50", description: "Ham, Bacon, or Sausage side of your favorite breakfast meats", name: "Ham, Bacon, or Sausage", photo: nil)
    static let anSingleEgg = MenuItems(price: "$1.25", description: "Can I offer you an egg in this trying time?", name: "One Egg", photo: nil)
    static let parkPotatoes = MenuItems(price: "$3.00 - $4.00", description: "Grilled Potatoes and Onion. add Cheese ($0.50)", name: "Park Potatoes", photo: nil)
    static let toast = MenuItems(price: "$2.00", description: "Side of Toast or (2) Biscuits", name: "Toast or Biscuits", photo: nil)
    static let cottageCheese = MenuItems(price: "$1.50", description: "Cup of Cottage Cheese or Vanilla Yogurt", name: "Cottage Cheese or Vanilla Yogurt", photo: nil)
    static let slicedTomatoes = MenuItems(price: "$1.50", description: "Slices of tasty Tomatoes", name: "Sliced Tomato", photo: nil)
    static let seasonalFruit = MenuItems(price: "$3.50 - $4.50", description: "Seasonal fruit! - available until sold out", name: "Seasonal Fruit", photo: nil)
    static let salsas = MenuItems(price: "$1.00", description: "Homemade Tomatillo Salsa or Red Salsa", name: "Salsa's", photo: nil)
    static let avacado = MenuItems(price: "$2.00", description: "Half of an Avacado", name: "Half Avacado", photo: nil)
    
    static let shortOrders = [theMeats,anSingleEgg,parkPotatoes,toast,cottageCheese,slicedTomatoes,seasonalFruit,salsas,avacado]
    
    // Drinks
    static let coffee = MenuItems(price: "$2.25", description: "Hot or Iced coffee - Free Refills", name: "Coffee", photo: nil)
    static let tea = MenuItems(price: "$2.25", description: "Hot or Iced Tea - Free Refills on Iced", name: "Tea", photo: nil)
    static let malk = MenuItems(price: "$1.00 - $1.50", description: "Small or large glass of Milk", name: "Milk", photo: nil)
    static let juice = MenuItems(price: "$2.00", description: "Orange, Apple, Grapefruit, Cranberry or some other drink I can't read right now. Shit.", name: "Juice", photo: nil)
    static let cannedSoda = MenuItems(price: "1.00", description: "A can of soda.. idk Like Coke or sprite maybe", name: "Canned Soda", photo: nil)
    
    static let drinks = [coffee,tea,malk,juice,cannedSoda]
    
    
    // App menu and formatted strings
    static let appMenu = [omelets,breakfastStuffs,moreBreakfastStuffs,sweetsAndStuffs, hamburgersAndSandiwches,soupsAndSalads,shortOrders,drinks]
    static let appMenuFormattedNames = ["Omelets","Breakfast Stuffs","More Breakfast Stuffs","Sweets and Stuffs","Hamburgers and Sandwiches","Soups and Salads","Short Orders and Sides","Drinks","Store Info"]
    
    
}


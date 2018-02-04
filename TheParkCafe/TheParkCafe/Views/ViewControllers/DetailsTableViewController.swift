//
//  DetailsTableViewController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {

   
    
    
    var menuItem: [MenuItems]?
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 40
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItem!.count
    }
    
     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row) {
            return UITableViewAutomaticDimension
        } else {
            return 40
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell") as? customDetailCell else {return UITableViewCell()}
       
        let item = menuItem![indexPath.row]
        cell.mealNameLabel.text = item.name
        cell.mealPriceLabel.text = item.price
        cell.mealDetailsLabel.text = item.description
        
        print(item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (selectedIndex == indexPath.row) {
            selectedIndex = -1
        } else {
            selectedIndex = indexPath.row
        }
        self.tableView.beginUpdates()
        self.tableView.reloadRows(at: [indexPath], with: .automatic)
        self.tableView.endUpdates()
    }

}

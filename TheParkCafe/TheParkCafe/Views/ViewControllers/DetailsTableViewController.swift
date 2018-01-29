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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItem!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell") else {return UITableViewCell()}
       
        let item = menuItem![indexPath.row]
        cell.textLabel?.text = item.name
        print(item)
        return cell
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   
}

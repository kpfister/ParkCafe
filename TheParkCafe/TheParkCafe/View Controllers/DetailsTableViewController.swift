//
//  DetailsTableViewController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {
    
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var overviewLabel: UILabel!
    
    
    var menuItem: [MenuItems]?
    var selectedIndex = -1
    var overView: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTableViewBackground()
        self.view.insetsLayoutMarginsFromSafeArea = true
        tableView.estimatedRowHeight = 60
        tableView.rowHeight = UITableViewAutomaticDimension
        overviewLabel.text = overView
        if overView != "" {
            headerView.isHidden = false
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        guard let headerView = tableView.tableHeaderView else {return}
        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        if headerView.frame.size.height != size.height {
            headerView.frame.size.height = size.height
            tableView.tableHeaderView = headerView
            tableView.layoutIfNeeded()
        }
    }

func designTableViewBackground() {
    let blurEffect = UIBlurEffect(style: .light)
    let blurView = UIVisualEffectView(effect: blurEffect)
    let backgroundImageView = UIImageView(image: UIImage(named: "outsideEmpty"))
    backgroundImageView.frame = self.tableView.frame
    backgroundImageView.contentMode = .scaleAspectFit
    blurView.frame = backgroundImageView.bounds
    backgroundImageView.addSubview(blurView)
    backgroundImageView.alpha = 0.9
    self.tableView.backgroundView = backgroundImageView
}



// MARK: - Table view data source
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuItem!.count
}

override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if(selectedIndex == indexPath.row) {
        return UITableViewAutomaticDimension
    } else {
        return 60
    }
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell") as? customDetailCell else {return UITableViewCell()}
    
    let item = menuItem![indexPath.row]
    cell.mealNameLabel.text = item.name
    cell.mealPriceLabel.text = item.price
    cell.mealDetailsLabel.text = item.description
    
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

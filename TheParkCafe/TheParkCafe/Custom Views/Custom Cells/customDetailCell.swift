//
//  customDetailCell.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 2/1/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class customDetailCell: UITableViewCell {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealPriceLabel: UILabel!
    @IBOutlet weak var mealDetailsLabel: UILabel!
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

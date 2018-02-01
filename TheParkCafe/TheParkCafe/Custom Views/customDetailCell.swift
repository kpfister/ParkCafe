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
    
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var mealDetailsLabel: UILabel!
    @IBOutlet weak var secondViewHeight: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var showDetails = false {
        didSet {
            secondViewHeight.priority = UILayoutPriority(rawValue: UILayoutPriority.RawValue(showDetails ? 250 : 999))
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

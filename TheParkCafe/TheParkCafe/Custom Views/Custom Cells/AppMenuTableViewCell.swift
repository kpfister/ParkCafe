//
//  AppMenuTableViewCell.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 2/5/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class AppMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var appMenuCellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

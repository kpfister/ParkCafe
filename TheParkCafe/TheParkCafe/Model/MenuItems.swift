//
//  ApplicationMenuItems.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/20/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation
import UIKit

public class MenuItems {
    
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

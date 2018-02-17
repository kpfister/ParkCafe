//
//  DailySpecials.swift
//  The Park Cafe
//
//  Created by Karl Pfister on 2/17/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation

class DailySpecials {
    
    var name: String
    var description: String?
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

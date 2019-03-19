//
//  Pizza.swift
//  pizzaApp
//
//  Created by Renaud Racinet on 19/03/2019.
//  Copyright © 2019 Renaud Racinet. All rights reserved.
//

import Foundation

class Pizza {
    var title: String?
    var ingredients: [String]?
    
    init(title: String?, ingredients: [String]?) {
        self.title = title ?? ""
        self.ingredients = ingredients ?? [""]
    }
}


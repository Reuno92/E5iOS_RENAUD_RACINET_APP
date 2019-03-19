//
//  PizzaCell.swift
//  pizzaApp
//
//  Created by Renaud Racinet on 19/03/2019.
//  Copyright © 2019 Renaud Racinet. All rights reserved.
//

import UIKit

class PizzaCell: UITableViewCell {

    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var ingredientCell: UILabel!
    
    func setPizza(pizza: Pizza) {
        titleCell.text = pizza.title
        ingredientCell.text = pizza.ingredients?.joined(separator: ", ")
    }
}

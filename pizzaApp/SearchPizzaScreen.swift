//
//  SearchPizzaScreen.swift
//  pizzaApp
//
//  Created by Renaud Racinet on 19/03/2019.
//  Copyright © 2019 Renaud Racinet. All rights reserved.
//

import UIKit

class SearchPizzaScreen: UIViewController {

    var recipes: [Pizza] = []
    var ResultRecipes = [Pizza]()
    
    @IBOutlet weak var ResultTableView: UITableView!
    
    @IBOutlet weak var SeachField: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResultRecipes = recipes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

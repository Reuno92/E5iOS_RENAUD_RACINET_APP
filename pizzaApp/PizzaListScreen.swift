//
//  PizzaListScreen.swift
//  pizzaApp
//
//  Created by Renaud Racinet on 19/03/2019.
//  Copyright © 2019 Renaud Racinet. All rights reserved.
//

import UIKit

class PizzaListScreen: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var pizzas = [Pizza]()
    @IBOutlet weak var SearchButton: UIButton!
    @IBOutlet weak var PizzaTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Push pizza in pizzas */
        pizzas = createArray()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createArray() -> [Pizza] {
        var array = [Pizza]()
        
        let margaritta = Pizza(title: "Margaritta", ingredients: ["Fromage", "Tomate"])
        let calzone = Pizza(title: "Calzone", ingredients: ["Fromage", "Tomate", "Jambon"])
        let orientale = Pizza(title: "Orientale", ingredients: ["Fromage", "Tomate", "merguez", "Poivron"])
        
        array += [margaritta, calzone, orientale]
        
        return array
    }
    
    @IBAction func toSearch(_ sender: Any) {
        let val: [Pizza] = pizzas
        
        if let next = self.storyboard?.instantiateViewController(withIdentifier: "search") as? SearchPizzaScreen {
            next.recipes = val
            self.navigationController?.pushViewController(next, animated: true)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pizza = pizzas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "pizzaCell") as! PizzaCell
        
        cell.setPizza(pizza: pizza)
        
        return cell
    }
    
}

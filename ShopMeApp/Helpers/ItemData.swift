//
//  ItemData.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 5/30/21.
//

import UIKit

let defaultPrice = 9.99
let salmon = Item(image: UIImage(named: "food1")!, name: "salmon", price: defaultPrice)
let cheesburger = Item(image: UIImage(named: "food2")!, name: "cheesburger", price: defaultPrice)
let burito = Item(image: UIImage(named: "food3")!, name: "burito", price: defaultPrice)
let spagetti = Item(image: UIImage(named: "food4")!, name: "spagetti", price: defaultPrice)
let pizza = Item(image: UIImage(named: "food5")!, name: "pizza", price: defaultPrice)
let salad = Item(image: UIImage(named: "food6")!, name: "salad", price: defaultPrice)


let items: [Item] = [salmon,cheesburger,burito,spagetti,pizza,salad]

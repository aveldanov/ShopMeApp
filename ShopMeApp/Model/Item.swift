//
//  Item.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 6/7/21.
//

import UIKit

class Item {
    public private(set) var image: UIImage
    public private(set) var name: String = ""
    public private(set) var price: Double
    
    init(image: UIImage, name:String, price: Double) {
        self.image = image
        self.name = name
        self.price = price
    }
    
}

//
//  ItemCollectionViewCell.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 5/30/21.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    
    
    func configure(forItem item: Item){
        
        itemImageView.image = item.image
        itemNameLabel.text = item.name
        itemPriceLabel.text = String(item.price)
        
    }
    
}

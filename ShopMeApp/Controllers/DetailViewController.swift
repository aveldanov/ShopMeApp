//
//  DetailViewController.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 5/30/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    @IBOutlet weak var adView: UIView!
    @IBOutlet weak var buyItemButton: UIButton!
    @IBOutlet weak var hideAdsButton: UIButton!
    
    
    func initData(forItem item:Item){

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageView.image = item.image
        itemNameLabel.text = item.name
        itemPriceLabel.text = String(item.price)
        buyItemButton.setTitle("Buy this item for $\(item.price)", for: .normal)
    }


    @IBAction func buyButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func hideAdsButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}

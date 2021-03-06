//
//  DetailViewController.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 6/7/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var ItemImageView: UIImageView!
    @IBOutlet weak var ItemNameLabel: UILabel!
    @IBOutlet weak var ItemPriceLabel: UILabel!
    @IBOutlet weak var adView: UIView!
    @IBOutlet weak var buyItemBtn: UIButton!
    @IBOutlet weak var hideAdBtn: UIButton!
    
    
    public private(set) var item: Item!
    
    
    func initData(forItem item: Item){
        self.item = item
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ItemImageView.image = item.image
        ItemNameLabel.text = item.name
        ItemPriceLabel.text = String(item.price)
        buyItemBtn.setTitle("Buy this item for $\(item.price)", for: .normal)
    }
    
    @IBAction func buyBtnClicked(_ sender: UIButton) {
    }
    
    @IBAction func hideAdBtnClicked(_ sender: UIButton) {
    }
    @IBAction func closeBtnClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}

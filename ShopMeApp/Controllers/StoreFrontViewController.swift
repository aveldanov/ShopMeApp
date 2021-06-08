//
//  ViewController.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 6/7/21.
//

import UIKit

class StoreFrontViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ItemCollectionViewCell else {
            fatalError("No Cell Configured")
        }
        let item = foodItems[indexPath.row]
        cell.configureCell(for: item)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }

    @IBAction func restoreButtonClicked(_ sender: UIButton) {
    }
    
}


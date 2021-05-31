//
//  ViewController.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 5/22/21.
//

import UIKit

class StoreCollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ItemCollectionViewCell else {
            fatalError("no cell configured")
        }
        
        let item = items[indexPath.row]
        cell.configure(forItem: item)
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(identifier: "DetailVC") as? DetailViewController else {
            fatalError("no DetailVC")
        }
        
        let item = items[indexPath.row]
        detailVC.initData(forItem: item)
        present(detailVC, animated: true, completion: nil)

        
    }
    
    
    
    
    @IBAction func restoreButton(_ sender: UIButton) {
    }
    
}



extension StoreCollectionVC: IAPServiceDelegate{
    func iapProductsLoaded() {
        <#code#>
    }
    
    
    
    
    
}


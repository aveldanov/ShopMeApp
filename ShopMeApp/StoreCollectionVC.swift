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
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
    
    
    
    
    @IBAction func restoreButton(_ sender: UIButton) {
    }
    
}


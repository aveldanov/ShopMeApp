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
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        return UICollectionViewCell()
    }

    @IBAction func restoreButtonClicked(_ sender: UIButton) {
    }
    
}


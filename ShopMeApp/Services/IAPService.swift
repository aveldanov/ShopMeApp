//
//  IAPService.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 6/11/21.
//

import Foundation
import StoreKit


class IAPService: NSObject, SKProductsRequestDelegate {

    static let shared = IAPService()
    
    
    func loadData(){
        // profuctIdToStringSet()
        
        
        
    }
    
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
    }
}



//
//  IAPService.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 5/30/21.
//

import Foundation
import StoreKit

class IAPService: NSObject, SKProductsRequestDelegate{

    
   static let shared = IAPService()
    
    func loadProducts(){
        // productIdToStringSet()
        
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        <#code#>
    }
    
    
}

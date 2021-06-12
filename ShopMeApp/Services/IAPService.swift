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
    var productIds = Set<String>()
    var productRequest = SKProductsRequest()
    
    func loadData(){
        // profuctIdToStringSet()
        // requestProducts(productIds)
        
        
    }
    
    func prodcutIdToStringSet(){
        productIds.insert(IAP_ITEM_ID)
    }
    
    func requestProducts(forId ids: Set<String>){
        productRequest = SKProductsRequest(productIdentifiers: ids)
        productRequest.delegate = self
        
        //start the process
        productRequest.start()
    }
    
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
    }
}


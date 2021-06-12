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
    
    var products = [SKProduct]() // product of response from App Store
    
    
    
    func loadData(){
         prodcutIdToStringSet()
         requestProducts(forId: productIds)
    }
    
    func prodcutIdToStringSet(){
        productIds.insert(IAP_ITEM_ID)
    }
    
    func requestProducts(forId ids: Set<String>){
        productRequest.cancel() // cancel all ongoing product requests
        productRequest = SKProductsRequest(productIdentifiers: ids)
        productRequest.delegate = self
        
        //start the process to send request to App Store
        productRequest.start()
    }
    
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        products = response.products
    }
}



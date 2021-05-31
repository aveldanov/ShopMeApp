//
//  IAPService.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 5/30/21.
//

import Foundation
import StoreKit

// create protocol to pass data between view controllers using delegation

protocol IAPServiceDelegate {
    func iapProductsLoaded()
}

class IAPService: NSObject, SKProductsRequestDelegate{
    
    static let shared = IAPService()
    
    var delegate: IAPServiceDelegate?
    
    
    var products = [SKProduct]()
    var productIds = Set<String>()
    var productReqest = SKProductsRequest()
    
    func loadProducts(){
        productIdToStringSet()
        requestProducts(forIds: productIds)
        
        
    }
    
    func productIdToStringSet(){
        productIds.insert(IAP_ITEM_ID)
        
    }
    
    func requestProducts(forIds ids:Set<String>){
        productReqest.cancel()
        productReqest = SKProductsRequest(productIdentifiers: ids)
        productReqest.delegate = self
        productReqest.start() // sends request to appStore
    }
    
    
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        self.products = response.products
        
        if products.count == 0{
            requestProducts(forIds: productIds)
        }else{
            // inform the app that purchases downloaded
            
            delegate?.iapProductsLoaded()
        }
    }
    
    
}

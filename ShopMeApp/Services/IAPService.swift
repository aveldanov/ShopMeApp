//
//  IAPService.swift
//  ShopMeApp
//
//  Created by Anton Veldanov on 6/11/21.
//

import Foundation
import StoreKit

// 1 the protocol will allow to use delegation and pass between VCs
protocol IAPServiceDelegate {
    func iapProductsLoaded()
}




class IAPService: NSObject, SKProductsRequestDelegate {

    static let shared = IAPService()
    
    // 2 create property to hold the instance of DELEGATE
    var delegate: IAPServiceDelegate?
    
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
        
        // retry the call if no products
        if products.count == 0{
            requestProducts(forId: productIds)
        }else{
            // 3 if we conform in OTHER VC to this protocol, the we can call this function
            delegate?.iapProductsLoaded()
        }
    }
}



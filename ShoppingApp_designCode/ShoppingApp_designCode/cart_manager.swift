//
//  cart_manager.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import Foundation


class cart_manager: ObservableObject {
    @Published private(set) var products : [Product] = []
    @Published private(set) var total : Int = 0
    
    func add_to_chart(product : Product){
        products.append(product)
        total += product.price
        
    }
 
    func remove_from_cart(product : Product){
        products = products.filter{ $0.id != product.id}
        total -= product.price
        
    }
    
}

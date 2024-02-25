//
//  Product.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var price : Int
    
}

var productList = [Product(name: "Orange Sweater", image: "sweater-1", price: 43),
                   Product(name: "Red Sweater", image: "sweater-2", price: 79),
                   Product(name: "White Sweater", image: "sweater-3", price: 23),
                   Product(name: "Beige Oversize Sweater", image: "sweater-4", price: 34),
                   Product(name: "Oversize Beige Sweater", image: "sweater-5", price: 25),
                   Product(name: "Light Beige Sweater", image: "sweater-6", price: 65),
                   Product(name: "Dark Blue Sweater", image: "sweater-7", price: 56),
                   Product(name: "White Sweater", image: "sweater-8", price: 67),
                   Product(name: "Red Sweater", image: "sweater-9", price: 51),
                   Product(name: "White Woman Sweater", image: "sweater-10", price: 87)
                
]

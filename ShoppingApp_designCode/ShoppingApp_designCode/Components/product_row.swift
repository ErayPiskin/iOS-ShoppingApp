//
//  product_row.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import SwiftUI

struct product_row: View {
    @EnvironmentObject var cartmanager : cart_manager
    var product : Product
    
    var body: some View {
        
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .cornerRadius(10)
            
            VStack(alignment : .leading, spacing: 10){
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
                }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .onTapGesture {
                    cartmanager.remove_from_cart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        
        
        
    }
}

#Preview {
    product_row(product: productList[3])
        .environmentObject(cart_manager())
}

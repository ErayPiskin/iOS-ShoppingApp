//
//  cart_view.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import SwiftUI

struct cart_view: View {
    
    @EnvironmentObject var cartmanager : cart_manager
    
    var body: some View {
        
        ScrollView{
            
            if cartmanager.products.count > 0 {
                ForEach(cartmanager.products, id: \.id) { product in
                    product_row(product: product)
                }
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartmanager.total).00")
                        .bold()
                    
                }
                .padding()
                
            }
            else{
                Text("Your chart is empty")
            }
            
        }
        .navigationTitle(Text("My Chart"))
        .padding(.top)
        
        
        
    }
}

#Preview {
    cart_view()
        .environmentObject(cart_manager())
}

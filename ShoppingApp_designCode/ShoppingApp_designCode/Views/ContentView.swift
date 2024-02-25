//
//  ContentView.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cartManager = cart_manager()
    
    var columns = [GridItem(.adaptive(minimum : 160), spacing: 20)]
    
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                ScrollView{
                    
                    LazyVGrid(columns: columns , spacing: 20) {
                        
                        ForEach(productList, id: \.id){ product in
                            product_card(product: product)
                                .environmentObject(cartManager)
                            
                            
                        }
                    }
                    .padding()
                    
                }
                .navigationTitle("Sweater Shop")
                .toolbar{
                    NavigationLink {
                        cart_view()
                            .environmentObject(cartManager)
                    } label: {
                        card_button(number_of_product: cartManager.products.count)
                    }

                    
                    
                    
                    
                }
                
                
            }
        }

        
        
        
        
    }
}

#Preview {
    ContentView()

}

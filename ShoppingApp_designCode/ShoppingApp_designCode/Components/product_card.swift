//
//  product_card.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import SwiftUI

struct product_card: View {
    
    var product : Product
    @EnvironmentObject var cartmanager : cart_manager
    
    
    var body: some View {
        
            ZStack(alignment : .topTrailing) { // parent zstack starting
                
                ZStack(alignment:.bottom) { // Child ZStack starting
                    
                    TabView{
                        Image(product.image)
                            .resizable()
                            .frame(width: 180,height: 250)
                            .cornerRadius(20)
                            .scaledToFill()
                        
                        Image(product.image)
                            .resizable()
                            .frame(width: 180,height: 250)
                            .cornerRadius(20)
                            .scaledToFill()
                        
                        Image(product.image)
                            .resizable()
                            .frame(width: 180,height: 250)
                            .cornerRadius(20)
                            .scaledToFill()
                        
                    }//parent zstack ending
                    .frame(width: 180, height: 250)
                    .tabViewStyle(PageTabViewStyle())
                    
                    VStack(alignment: .leading ){ // VStack starting
                        
                        Text("\(product.name)")
                            .bold()

                        
                        Text("\(product.price)")
                            .font(.caption)
                        
                        
                        
                    } // VStack ending
                    .padding()
                    .frame(width: 180, height: 60,alignment: .topLeading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    .scaledToFill()
                    
                    
                    
                }// Child ZStack ending
                .frame(width: 180 , height: 250)
                .shadow(radius: 5)
                .cornerRadius(20)
                
                Button(action: {
                    cartmanager.add_to_chart(product: product)
                        
                }, label: { // button starting
                    Image(systemName: "plus")
                        .padding(10)
                        .background(Color.black)
                        .foregroundStyle(.white)
                        .cornerRadius(50)
                        .padding(10)
                })// Button ending
                
                
            }

    }
}

#Preview {
    product_card(product: productList[0])
        .environmentObject(cart_manager())
}

//
//  card_button.swift
//  ShoppingApp_designCode
//
//  Created by mustafa eray Pişkin on 15.02.2024.
//

import SwiftUI

struct card_button: View {
    
    var number_of_product : Int
    
    var body: some View {
        
        ZStack(alignment : .topTrailing){
            
            Image(systemName: "cart")
                .font(.title)
                .padding(.top,5)
            
            if number_of_product > 0 {
                Text("\(number_of_product)")
                    .padding(3)
                    .font(.caption2)
                    .foregroundStyle(.white)
                    .bold()
                    .frame(width: 20,height: 20)
                    .background(Color.red)
                    .cornerRadius(100)
                
                
                    
                
                
            }
            
        }
        
        
    }
}

#Preview {
    card_button(number_of_product: 1)
}

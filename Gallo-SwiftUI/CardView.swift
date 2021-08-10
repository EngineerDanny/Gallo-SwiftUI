//
//  CardView.swift
//  Gallo-SwiftUI
//
//  Created by Danny on 10/08/2021.
//

import SwiftUI

struct CardView: View {
    let product: Product
    
    var body: some View {
        
        VStack{
            Image(product.image)
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 300 )
            
            Text(product.title)
                .bold()
                .foregroundColor(  Color("AccentColor"))
                .padding(.horizontal)
             
            
            Text(product.content)
                .font(.caption)
                .foregroundColor(  Color("AccentColor"))        .padding(.horizontal)
        }.frame(maxWidth: 300)
        .cornerRadius(50)
     

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(product:Product.getProduct())
    }
}



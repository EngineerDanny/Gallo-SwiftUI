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
                .font(.title)
                .foregroundColor(  Color("AccentColor"))
             
            
            Text(product.content)
                .font(.caption)
                .foregroundColor(  Color("AccentColor"))
        }.frame(maxWidth: 200)
        .cornerRadius(50)
     

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(product:Product.getProduct())
    }
}



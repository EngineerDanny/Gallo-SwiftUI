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
                .frame(maxHeight: 250 )
            
            Text(product.title)
                .bold()
                .frame(  alignment: .leading)
                .foregroundColor(  Color("AccentColor"))
                .padding(.horizontal)
             
            
            Text(product.content)
                .frame(width: 250, height: 45,alignment: .center)
                .font(.caption)
                            .foregroundColor(  Color("AccentColor"))
         
              
            
        }.frame(width: 270)
        .background(Color("CardColor"),alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(20)
   

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(product:Product.getProduct())
    }
}



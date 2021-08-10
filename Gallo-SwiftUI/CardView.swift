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
            
            Text(product.title)
            Text(product.content)
            Image(product.image)
            
        }
       
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(product:Product.getProduct())
    }
}



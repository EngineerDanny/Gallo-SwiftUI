//
//  HomeView.swift
//  Gallo-SwiftUI
//
//  Created by Danny on 10/08/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ){
            HStack{
                VStack{
                    Text("Good morning,")  .font(.headline)
                        .foregroundColor(  Color("AccentColor"))        .padding(.horizontal)
                    
                    Text("Shaileen")  .font(.title)
                        .bold()
                        .foregroundColor(  Color("AccentColor"))        .padding(.horizontal)
                }
                Spacer()
                Image("User")
                    .resizable()
                    .frame( maxWidth: 100, maxHeight: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(200)
               
            }
            
            Text("Recommended Products")  .font(.subheadline)
                .bold()
                .foregroundColor(  Color("AccentColor"))        .padding(.horizontal)
            
            ScrollView(.horizontal,showsIndicators : true ) {
                LazyHStack{
                    CardView(product:Product.getProduct())
        
        CardView(product:Product.getProduct())
        
        CardView(product:Product.getProduct())
                }
                            
            }
        }.padding()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

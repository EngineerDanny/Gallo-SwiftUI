//
//  HomeView.swift
//  Gallo-SwiftUI
//
//  Created by Danny on 10/08/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            HStack{
                VStack(alignment: .leading,      spacing: 5 ){
                    Text("Good morning,")  .font(.headline)
                        .foregroundColor(  Color("AccentColor"))
                    Text("Shaileen")  .font(.title)
                        .bold()
                        .foregroundColor(  Color("AccentColor"))
                }
                Spacer()
                Image("User")
                    .resizable()
                    .frame( maxWidth: 50, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
               
            }.padding(.horizontal)
            
            SearchView().padding()
            
            CardPicker().padding()
            
            Text("Recommended Products")  .font(.subheadline)
                .bold()
                .foregroundColor(Color("AccentColor"))        .padding(.horizontal)
            
            ScrollView(.horizontal,showsIndicators : false ) {
                LazyHStack{
                    CardView(product:Product.getProduct())
                      
                    CardView(product:Product.getProduct())
                        
                    CardView(product:Product.getProduct())
                }
                            
            }.frame( maxHeight: 370, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.leading)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

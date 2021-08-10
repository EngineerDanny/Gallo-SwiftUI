//
//  SearchView.swift
//  Gallo-SwiftUI
//
//  Created by Danny on 10/08/2021.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    @State private var isEditing = false

    var body: some View {
        HStack{
            TextField(
                "Search for 3D Products",
                 text: $search
            ).padding(.horizontal)
            Image(systemName: "magnifyingglass").foregroundColor(Color("Primary"))
                .padding(.horizontal)
        }
        .frame(height: 50)
        
        .background(Color.white, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        .cornerRadius(10)
        
       
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView().previewLayout(.fixed(width: 400, height: 100))
    }
}

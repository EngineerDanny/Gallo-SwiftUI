//
//  CardPicker.swift
//  Gallo-SwiftUI
//
//  Created by Danny on 10/08/2021.
//

import SwiftUI

struct CardPicker: View {
    var body: some View {
        HStack(
            alignment: .top,
            spacing: 40
        ){
            CardPickerTile(title: "Recent", image: "clock", isSelected: true)
            
            CardPickerTile(title: "Trending", image: "clock", isSelected: false)
            
            CardPickerTile(title: "Popular", image: "clock", isSelected: false)
            
            CardPickerTile(title: "Premium", image: "clock", isSelected: false)
        }
    }
}

struct CardPickerTile: View {
    let title : String
    let image : String
    let isSelected : Bool
    
    
    
    var backgroundColor : Color {
        return isSelected ? Color("Primary") : Color.white
    }
    
    var imageColor : Color {
        return isSelected ? Color.white : Color.black
    }
    
    var titleColor : Color {
        return isSelected ? Color("Primary") : Color.gray
    }
    
    
    var body: some View {
        VStack{
            Image(systemName:image).foregroundColor(imageColor)
                .frame(width: 60, height: 60, alignment: .center)
                .background(
                    backgroundColor, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding(.bottom,1)
            
            
            Text(title)
                .foregroundColor(titleColor)
                .font(.body)
        }
    }
}

struct CardPicker_Previews: PreviewProvider {
    static var previews: some View {
        CardPicker().background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
}

//
//  ContentView.swift
//  Gallo-SwiftUI
//  Created by Danny on 09/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/;
            Text("Hello, world!")
                .padding();
            Button(action: {
                print("clicked me")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            });
            
        })
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

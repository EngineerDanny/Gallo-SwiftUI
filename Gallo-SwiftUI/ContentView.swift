//
//  ContentView.swift
//  Gallo-SwiftUI
//  Created by Danny on 09/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
           TabView {
            HomeView().tag(1)
                 .tabItem {
                         Image(systemName: "house")
                         Text("Home")
                     }
            Text("Another Tab").tag(2)
                     .tabItem {
                         Image(systemName: "heart")
                         Text("Second")
                     }
                 Text("The Third Tab").tag(3)
                     .tabItem {
                         Image(systemName: "cube")
                         Text("Third")
                     }
            
            Text("The Last Tab").tag(4)
                .tabItem {
                    Image(systemName: "person")
                    Text("Fourth")
                }
             }
             .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

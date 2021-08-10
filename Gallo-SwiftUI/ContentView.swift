//
//  ContentView.swift
//  Gallo-SwiftUI
//  Created by Danny on 09/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    init() {
//      let appearance =  UITabBar.appearance()
//        appearance.unselectedItemTintColor = UIColor(named: "Primary");
//        appearance.barTintColor  = UIColor.white;
//        appearance.isTranslucent = false;
    }
    
    @State private var index = 1;
    
    
    var body: some View {
  
        TabView(selection: $index){
              
            HomeView().tag(1)
                 .tabItem {
                  
                    Image(systemName: "house")
                    if index == 1 {
                        Text("o")
                    }
                  
    
                  
                     }
            Text("Another Tab").tag(2)
                     .tabItem {
                         Image(systemName: "heart")
                        if index == 2 {
                            Text("o")
                        }
                        
                     }
                 Text("The Third Tab").tag(3)
                     .tabItem {
                         Image(systemName: "cube")
                        if index == 3 {
                            Text("o")
                        }
                 
                     }
            
            Text("The Last Tab").tag(4)
                .tabItem {
                    Image(systemName: "person")
                    if index == 4 {
                        Text("o")
                    }
              
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

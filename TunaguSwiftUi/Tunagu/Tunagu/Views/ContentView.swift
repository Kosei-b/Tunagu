//
//  ContentView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView{
            
           HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("ListView")
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("List")
                }
            
            Text("MassageView")
                .tabItem{
                    Image(systemName: "message")
                    Text("Message")
                }
            
            Text("ProfileView")
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .onAppear() {
                UITabBar.appearance().backgroundColor = .white
            
            }
        .accentColor(.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

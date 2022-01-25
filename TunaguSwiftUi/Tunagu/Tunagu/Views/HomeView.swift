//
//  ContentView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI
import FirebaseAuth


struct HomeView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView{
            
            if viewModel.logedIn {
                
                TabView{
                    
                  HomeContentView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    
                    Text("ListView")
                        .tabItem{
                            Image(systemName: "list.dash")
                            Text("List")
                        }
                    
                    Text("MessageView")
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
                
                
            }else {
                
               StartView()
            }
            
        }
        .onAppear {
            viewModel.logedIn = viewModel.isLogedIn
        }
        
        
        
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

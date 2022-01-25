//
//  SiginupView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-21.
//

import SwiftUI

struct SiginupView: View {
    
    @State var name = ""
    @State var Email = ""
    @State var Password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 25){
                    
                    Text("Create your account")
                        .font(.system(size: 35))
                        .foregroundColor(.gray)
                    
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                    
                  
                    
                    TextField("User Name", text: self.$name)
                        .asSiginupTextField()
                        
                    TextField("Email", text: self.$Email)
                        .asSiginupTextField()
                
                    TextField("Password", text: self.$Password)
                        .asSiginupTextField()
                    
                    
                    Button(action: {
                        
                    } ,label: {
                        Text("Create account")
                            .font(.system(size: 20, weight: .bold))
                    })
                    .frame(width: 350, height: 45)
                    .background(Color(red: 0, green: 0, blue: 0))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding(.top, 60)
                    
                    HStack{
                        
                        Text("Have an account already? ")
                            .foregroundColor(.gray)
                        
                        NavigationLink(destination: LoginView()) {
                            Text("Log in")
                        }
                        
                    }
                
                }
                .padding(.horizontal, 30)
                
                
            }
            
           
        }
        .navigationBarHidden(true)
        
        // body
    }
}


struct SiginupView_Previews: PreviewProvider {
    static var previews: some View {
        SiginupView()
    }
}

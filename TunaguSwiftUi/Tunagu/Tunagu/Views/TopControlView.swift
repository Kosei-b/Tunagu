//
//  TopControlView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI

struct TopControlView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    
    var body: some View {
        
        HStack{
            
            Image("Profile_Image")
                .resizable()
                .scaledToFill()
                .cornerRadius(50)
                .frame(width: 50, height: 50, alignment: .center)
                .frame(width: frameWidth / 3)
                
            Text("KOSEI BAN")
                .padding()
                .frame(width: frameWidth / 3)
            
            ZStack {
                
                Color.white
                    .frame(width: 60, height: 50)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                Button(action: {
                
                }, label: {
                    Image(systemName: "gearshape")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.black)
                })
                    .frame(width: frameWidth / 3)
                
            
            }
        }
        .frame(width:frameWidth)
        .background(Color.white)
       
    }
}



struct TopControlView_Previews: PreviewProvider {
    static var previews: some View {
        TopControlView()
    }
}

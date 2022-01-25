//
//  HomeContentView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-21.
//

import SwiftUI

struct HomeContentView: View {
    
    var body: some View {
        
        VStack{
            
            TopControlView()
            
            SarchView()
            
            CardView()
            
        }
        
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}

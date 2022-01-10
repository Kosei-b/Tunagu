//
//  SarchView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI

struct SarchView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    
    var body: some View {
        
        Text("Hello, world!")
            .padding()
            .frame(width: frameWidth,height: 50)
            .background(Color.blue)
    }
}

struct SarchView_Previews: PreviewProvider {
    static var previews: some View {
        SarchView()
    }
}

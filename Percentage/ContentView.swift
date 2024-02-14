//
//  ContentView.swift
//  Percentage
//
//  Created by  Ixart on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.purple)
                .cornerRadius(10)
                .frame(width: 290, height: 60)
            
            Text("100%")
                .font(.largeTitle)
                .bold()
            
            
            
        } // FIN ZSTACK
        
        
        .padding()
        
    } // FIN BODY
} // FIN STRUCT

#Preview {
    ContentView()
}

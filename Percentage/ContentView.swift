//
//  ContentView.swift
//  Percentage
//
//  Created by  Ixart on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var progress = 0.0
    
    var body: some View {
        ZStack {
            Image(systemName: "battery.0")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .background(Rectangle()
                    .fill(Color.green)
                    .scaleEffect(CGSize(width: 1.0, height: 1.0), anchor: .leading))
            
            
                .mask(
                    Image(systemName: "battery.100")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                
                ) // FIN DE MASK
            Text("\(Int(self.progress * 100))%")
            
              
        } // FIN VSTACK
        
        
        .padding()
        
    } // FIN BODY
} // FIN STRUCT

#Preview {
    ContentView()
}

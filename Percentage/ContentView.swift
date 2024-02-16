//
//  ContentView.swift
//  Percentage
//
//  Created by  Ixart on 13/02/2024.
//

import SwiftUI
import Vortex

struct ContentView: View {
    @State private var progress = 0.0
    
    var body: some View {
        
        
        ZStack  {
            VortexView(.rain) {
                Circle()
                    .fill(.blue)
                    .frame(width: 32)
                    .tag("circle")
            }
            Rectangle()
                .cornerRadius(19)
                .frame( width: 290, height: 60)
                .foregroundColor(.purple)
                .scaleEffect(x: progress, y: 1, anchor: .leading)
                .animation(.spring(response: 0.5, dampingFraction: 2.7))
            
                .onAppear {
                                    progress = 1.0
                    
                                } // on appear 


               
             
            Text("\(Int(progress * 100))%")
                .font(.largeTitle)
                .bold()
            
            

            
            
            
        } // FIN ZSTACK
        
        
        .padding()
        
    } // FIN BODY
} // FIN STRUCT

#Preview {
    ContentView()
}

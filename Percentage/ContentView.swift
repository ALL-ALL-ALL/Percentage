//
//  ContentView.swift
//  Percentage
//
//  Created by  Ixart on 13/02/2024.
//

import SwiftUI
import UIKit


struct ContentView: View {
    @State private var progress = 0.0
    

    
var body: some View {
    
    
    ZStack{
        
        Rectangle()
            .frame(width: 250, height: 50, alignment: .center)
            .foregroundColor(.purple)
            .cornerRadius(15)
            .scaleEffect(x: progress, y: 1, anchor: .leading)
            .animation(.spring(response: 0.5, dampingFraction: 2.7))


        
        Text("\(Int(progress * 100))%") // Modifie le texte en fonction de la progression
            .font(.title)
            .bold()
        
        
        
       
        
        
        
    } // FIN ZSTACK
    .onAppear {
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                    if progress < 1.0 {
                        progress += 0.01
                    } else {
                        timer.invalidate()
                    }
                }
            }
    
    
        
        
        
        
        
        } // fin body
    
 }// fin struct


#Preview {
    ContentView()
}







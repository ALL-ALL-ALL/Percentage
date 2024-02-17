//
//  ContentView.swift
//  Percentage
//
//  Created by  Ixart on 13/02/2024.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var progress = 0.0
    @State private var count = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(19)
                .frame(width: 290, height: 40)
                .foregroundColor(.purple)
                .scaleEffect(x: progress, y: 1, anchor: .leading)
                .animation(.spring(response: 0.5, dampingFraction: 2.7))
                .padding(.bottom, 40)
            
            VStack {
                ForEach(0..<count, id: \.self) { index in
                    Text("\(Int(progress * 100))%") // Utilisation d'un seul Text
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .transition(.opacity)
                }
            }
        }
        .padding()
        
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if progress < 1 {
                    progress += 0.01
                    count = Int(progress * 200)
                } else {
                    //???
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






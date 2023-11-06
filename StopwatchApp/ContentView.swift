//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Miyakawa Yoshi on 2023/11/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (background)
            Color.black
                .ignoresSafeArea()
            
            // Secong layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: .gray, label: "Reset", labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: .brown, label: "Start", labelColor: .green)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

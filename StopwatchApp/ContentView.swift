//
//  ContentView.swift
//  StopwatchApp
//
//  Created by 宮川義之助 on 2023/11/03.
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
                ZStack {
                    // First layer
                    Circle()
                        .foregroundColor(.gray)
                    .frame(width: 100)
                    // Second layer
                    Circle()
                        .foregroundColor(.black)
                    .frame(width: 93)
                    // Third layer
                    Circle()
                        .foregroundColor(.gray)
                    .frame(width: 89)
                    // Fourth layer
                    Text("Reset")
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

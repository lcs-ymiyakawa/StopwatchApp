//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Yoshi Miyakawa on 2023/11/03.
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
                    CircleButtonView(buttonColor: .darkGray, label: "Reset", labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: .darkGreen, label: "Start", labelColor: .green)
                }
            }
            .padding()
        }
    }
}

#Preview {
        TabView {
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
            
            Text("Timer")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .accentColor(.orange)
                .preferredColorScheme(.dark)
    }
}

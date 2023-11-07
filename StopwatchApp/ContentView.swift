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
                Spacer()
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Gray"), label: "Reset", labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"), label: "Start", labelColor: .green)
                }
                
                // List of times
                List {
                    Group {
                        TimeListView(lapNumber: "Lap 5", time: "00:00.98", listColor: .white)
                        TimeListView(lapNumber: "Lap 4", time: "00:04.08", listColor: .red)
                        TimeListView(lapNumber: "Lap 3", time: "00:00.96", listColor: .green)
                        TimeListView(lapNumber: "Lap 2", time: "00:02.76", listColor: .white)
                        TimeListView(lapNumber: "Lap 1", time: "00:01.16", listColor: .white)
                    }
                    // Remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                // Set the amount of vertical height we want this list to take up
                .frame(height: 300)
                // Adjust liststyle to match design
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

#Preview {
    TabView(selection: Binding.constant(3)) {
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
    }
    .accentColor(.orange)
    .preferredColorScheme(.dark)
}

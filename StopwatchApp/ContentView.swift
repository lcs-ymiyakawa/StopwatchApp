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
            
            //First layer (background)
            Color.yellow
                .ignoresSafeArea()
            //Secong layer (rest of interface)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

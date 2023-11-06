//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by 宮川義之助 on 2023/11/06.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
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
}

#Preview {
    CircleButtonView()
}

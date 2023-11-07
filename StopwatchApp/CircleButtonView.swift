//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Yoshi Miyakwa on 2023/11/06.
//

import SwiftUI

struct CircleButtonView: View {
    
    // MARK: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    var body: some View {
        ZStack {
            // First layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 100)
            // Second layer
            Circle()
                .foregroundColor(.black)
            .frame(width: 93)
            // Third layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 89)
            // Fourth layer
            Text(label)
                .font(.title2)
                .foregroundColor(labelColor)
        }
    }
}



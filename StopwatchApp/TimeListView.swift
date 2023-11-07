//
//  TimeListView.swift
//  StopwatchApp
//
//  Created by Yoshi Miyakawa on 2023/11/06.
//

import SwiftUI

struct TimeListView: View {
    let lapNumber: String
    let time: String
    let listColor: Color
    var body: some View {
        HStack {
            Text(lapNumber)
                .foregroundColor(listColor)
            Spacer()
            Text(time)
                .foregroundColor(listColor)
        }
    }
}

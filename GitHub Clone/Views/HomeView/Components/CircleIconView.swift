//
//  CircleIconView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct CircleIconView: View {
    let iconName: String
    let foregroundColor: Color
    let backgroundColor: Color
    let index: Int
    var body: some View {
        Image(systemName: iconName)
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundStyle(foregroundColor)
            .background(
                Circle()
                    .foregroundStyle(backgroundColor)
                    .frame(width: 24, height: 24)
            )
            .background(
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 28, height: 28)
            )
            .padding(.trailing, CGFloat(index) * 32)
    }
}

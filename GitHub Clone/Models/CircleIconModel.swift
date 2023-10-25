//
//  CircleIconModel.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct CircleIconModel: Identifiable{
    let id = UUID()
    let iconName: String
    let foregroundColor: Color
    let backgroundColor: Color
}

extension CircleIconModel {
    static let icons: [CircleIconModel] = [
        CircleIconModel(iconName: "bolt", foregroundColor: .white, backgroundColor: .blue),
        CircleIconModel(iconName: "record.circle", foregroundColor: .black, backgroundColor: .green),
        CircleIconModel(iconName: "arrow.triangle.pull", foregroundColor: .yellow, backgroundColor: .purple),
        CircleIconModel(iconName: "bubble.left.and.bubble.right.fill", foregroundColor: .purple, backgroundColor: .orange),
        CircleIconModel(iconName: "building.2", foregroundColor: .blue, backgroundColor: .red),
        CircleIconModel(iconName: "person.2", foregroundColor: .green, backgroundColor: .yellow),
        CircleIconModel(iconName: "briefcase", foregroundColor: .orange, backgroundColor: .pink),
        CircleIconModel(iconName: "doc", foregroundColor: .red, backgroundColor: .gray)
    ]
}

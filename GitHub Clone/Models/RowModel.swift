//
//  RowModel.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//
import SwiftUI

struct RowModel: Identifiable{
    let id = UUID()
    let title: String
    let imageName: String
    let imageBackgroundColor: Color
    let imageForegroundColor: Color = .white
}

extension RowModel{
    static let HomeRows: [RowModel] = [
        RowModel(title: "Issuee",
                 imageName: "record.circle",
                 imageBackgroundColor: .green),
        
        RowModel(title: "Pull Requests",
                 imageName: "arrow.triangle.pull",
                 imageBackgroundColor: .blue),
        
        RowModel(title: "Discussions",
                 imageName: "bubble.left.and.bubble.right.fill",
                 imageBackgroundColor: .purple),
        
        RowModel(title: "Projects",
                 imageName: "rectangle.inset.filled.on.rectangle",
                 imageBackgroundColor: .gray),
        
        RowModel(title: "Repositories",
                 imageName: "book.closed",
                 imageBackgroundColor: .black),
        
        RowModel(title: "Organizations",
                 imageName: "building.2",
                 imageBackgroundColor: .orange),
        
        RowModel(title: "Starred",
                 imageName: "star",
                 imageBackgroundColor: .yellow)
    ]
    
    static let ExploreRows: [RowModel] = [
        RowModel(title: "Trending Repositories",
                 imageName: "flame",
                 imageBackgroundColor: .purple),
        
        RowModel(title: "Awesome Lists",
                 imageName: "face.smiling",
                 imageBackgroundColor: .red),
    ]
    
    
}

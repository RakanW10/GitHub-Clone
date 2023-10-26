//
//  HomeView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            CustomSectionView(title: "My Work",
                              rows: RowModel.HomeRows)
            EmptySectionView(title: "Favorites",
                             text: "Add favorite repositories here to have quick access at any time, without having to search",
                             buttonLabel: "Add Favorites"
            )
            
            CustomSectionWithIconsView(title: "Shortcuts",
                                       text: "The things you need, one tap away",
                                       subtext: "Fast access to uour lists of Issues, Pull Requests, or Discussions",
                                       buttonLabel: "Get Started"
            )
            
        }
        .background(
            Rectangle()
                .fill(Color("BackgroundColor"))
                .ignoresSafeArea()
        )
    }
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
}

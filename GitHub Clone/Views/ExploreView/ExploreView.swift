//
//  ExploreView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView{
            CustomSectionView(
                title: "Discover", rows: RowModel.ExploreRows
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
    static let ExploreRows: [RowModel] = [
        RowModel(title: "Trending Repositories",
                 imageName: "flame",
                 imageBackgroundColor: .purple),
        
        RowModel(title: "Awesome Lists",
                 imageName: "face.smiling",
                 imageBackgroundColor: .red),
    ]
}

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
    
}

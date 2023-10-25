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
                             text: "Add facorite repositories here to have quick access at any time, without having to search",
                             buttonLable: "Add Favorites"
            )
            
            CustomSectionWithIconsView(title: "Shortcuts",
                                       text: "The things you need, one tap away",
                                       subtext: "Fast access to uour lists of Issues, Pull Requests, or Discussions",
                                       buttonLable: "Get Started"
            )
            
        }
        .background(
            Rectangle()
                .fill(Color("BackgroundColor"))
                .ignoresSafeArea()
        )
    }
}

#Preview {
    HomeView()
}

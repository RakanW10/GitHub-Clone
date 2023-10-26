//
//  NotificationsView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct NotificationsView: View {
    
    var body: some View {
        ScrollView{
            NotificationCardView(repoName: "iOS-DevelopmentBootcamp-Pct-2023",
                                 title: "Swift Boot Camp Week-3 day-2",
                                 author: "🧑🏻‍💻 RakanW10",
                                 hours: "9h"
            )
        }
        .background(
            Rectangle()
                .fill(Color("BackgroundColor"))
                .ignoresSafeArea()
        )
    }
}

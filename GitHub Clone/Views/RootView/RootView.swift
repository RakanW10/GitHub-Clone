//
//  RootView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct RootView: View {
    @State private var path = [String]()
    var body: some View {
        TabView {
            NavigationStack(path: $path){
                
                HomeView()
                    .navigationTitle("Home")
                    
            }
            .tabItem {
                Label(
                    title: {
                        Text("Home")
                    },
                    icon: {
                        Image(systemName: "house")
                    }
                )
            }
            
            NavigationStack{
                NotificationsView()
                    .navigationBarTitle("Inbox")
            }
            .tabItem {
                Label(
                    title: {
                        Text("Notivications")
                    },
                    icon: {
                        Image(systemName: "bell")
                    }
                )
            }
            
            NavigationStack{
                ExploreView()
                    .navigationBarTitle("Explore")
            }
            .tabItem {
                Label(
                    title: {
                        Text("Explore")
                    },
                    icon: {
                        Image(systemName: "magnifyingglass")
                    }
                )
            }
            
            NavigationStack{
                ProfileView()
            }
            .tabItem {
                Label(
                    title: {
                        Text("Profile")
                    },
                    icon: {
                        Image(systemName: "person")
                    }
                )
            }
            
        }
    }
}


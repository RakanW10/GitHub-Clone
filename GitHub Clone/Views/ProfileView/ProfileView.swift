//
//  ProfileView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            ProfileCardView(
                profileImageName: "ProfileImage",
                name: "Rakan Alotaibi",
                username: "Rakanw10",
                bio: "To be a programmer is to be a student for life.",
                followerCount: 10,
                followingCount: 8
            )
            
            CustomSectionView(rows:RowModel.ProfileRows)
            
            HStack{
                Image(systemName: "pin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(.trailing,8)
                Text("Pinned")
                    
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ProjectCardView(
                        profileImageName: "ProfileImage",
                        username: "Rakanw10",
                        projectName: "ProjectName",
                        starCount: 0,
                        languageName: "Dart"
                    )
                    
                    ProjectCardView(
                        profileImageName: "ProfileImage",
                        username: "Rakanw10",
                        projectName: "ProjectName",
                        starCount: 0,
                        languageName: "Dart"
                    )
                    
                }
                .padding(.horizontal)
            }
        }
        .background(
            Rectangle()
                .fill(Color("BackgroundColor"))
                .ignoresSafeArea()
        )
    }
}

struct ProfileView_Provider: PreviewProvider{
    static var previews: some View{
        ProfileView()
    }
}

extension RowModel{
    static let ProfileRows = [
        RowModel(title: "Repositories",
                 imageName: "book.closed",
                 imageBackgroundColor: .black,
                 trailingNumber: 64),
        RowModel(title: "Starred",
                 imageName: "star",
                 imageBackgroundColor: .yellow,
                 trailingNumber: 12),
        RowModel(title: "Organizations",
                 imageName: "building.2",
                 imageBackgroundColor: .orange,
                 trailingNumber: 2),
        RowModel(title: "Projects",
                 imageName: "rectangle.inset.filled.on.rectangle",
                 imageBackgroundColor: .gray,
                 trailingNumber: 0),
    ]
}
struct ProjectCardView: View {
    let profileImageName: String
    let username: String
    let projectName: String
    let starCount: Int
    let languageName: String

    var body: some View {
        VStack {
            HStack {
                Image(profileImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.horizontal, 8)
                    .clipShape(Circle())
                Text(username)
                    .foregroundStyle(Color(UIColor.lightGray))
            }

            Text(projectName)
                .bold()

            HStack {
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                Text("\(starCount)")
                    .padding(.trailing)

                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.blue)
                    .frame(width: 16, height: 16)
                
                Text(languageName)
            }
        }
        .frame(width: 350, height: 100, alignment: .leading)
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.white.opacity(0.25))
        )
    }
}

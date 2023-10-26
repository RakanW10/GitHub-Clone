//
//  ProjectCardView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 11/04/1445 AH.
//

import SwiftUI

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
        .frame(width: 320, height: 100, alignment: .leading)
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.white.opacity(0.25))
        )
    }
}

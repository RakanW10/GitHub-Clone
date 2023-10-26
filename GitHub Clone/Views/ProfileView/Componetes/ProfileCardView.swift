//
//  ProfileCard.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct ProfileCardView: View {
    let profileImageName: String
    let name: String
    let username: String
    let bio: String
    let followerCount: Int
    let followingCount: Int

    var body: some View {
        VStack {
            HStack {
                Image(profileImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .padding(.horizontal, 8)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title2)
                        .bold()
                    Text(username)
                        .font(.title3)
                        .foregroundStyle(Color(UIColor.lightGray))

                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            Text(bio)
                .font(.body)
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(.horizontal, 8)
                Text("\(followerCount) followers • \(followingCount) following")
                    .font(.body)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        }
    }
}

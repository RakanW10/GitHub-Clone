//
//  NotificationCardView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct NotificationCardView: View {
    let repoName: String
    let title: String
    let author: String
    let hours: String
    var body: some View {
        VStack{
            HStack(alignment: .top){
                VStack{
                    Image(systemName: "record.circle")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.green)
                        .padding(.trailing,6)
                    
                }//: VStack1
                
                VStack{
                    Text(repoName)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.callout)
                        .foregroundStyle(.gray.opacity(0.8))
                    Text(title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.callout)
                    Text(author)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.callout)
                        .foregroundStyle(.gray.opacity(0.8))
                }//: VStack1
                
                VStack{
                    Text(hours)
                        .frame(maxWidth: 30, alignment: .leading)
                        .font(.callout)
                        .foregroundStyle(.gray.opacity(0.8))
                }//: VStack1
            }//: HStack
            .padding(.horizontal)
            Divider()
        }//: VStack0
    }
}

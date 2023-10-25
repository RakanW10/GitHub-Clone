//
//  EmptySectionView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct EmptySectionView: View {
    let title: String
    let text: String
    let buttonLabel: String
    var body: some View{
        VStack{
            // Header
            HStack{
                Text(title)
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity,alignment: .leading)
                Image(systemName: "ellipsis")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22,height: 22)
                    .foregroundStyle(.gray.opacity(0.5))
                
            }//: HStack
            VStack{
                Text(text)
                    .multilineTextAlignment(.center)
            
                Button(action: {}, label: {
                    Text(buttonLabel)
                        .bold()
                        .frame(maxWidth: .infinity,idealHeight: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(.gray)
                        )
                })
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white.opacity(0.25))
            )
        }//: VStack0
        .padding(.horizontal)
    }
}

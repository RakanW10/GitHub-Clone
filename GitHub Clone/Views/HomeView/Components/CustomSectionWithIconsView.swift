//
//  CustomSectionWithIconsView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//

import SwiftUI

struct CustomSectionWithIconsView: View {
    let title: String
    let text: String
    let subtext: String
    let buttonLable: String
  
    
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
                
                ZStack{
                    ForEach(CircleIconModel.icons.indices.reversed(), id: \.self){index in
                        CircleIconView(iconName: CircleIconModel.icons[index].iconName,
                                       foregroundColor: CircleIconModel.icons[index].foregroundColor,
                                       backgroundColor: CircleIconModel.icons[index].backgroundColor,
                                       index: index
                        )
                        
                       
                        
                    }
                    
                }
                .frame(maxWidth: .infinity,alignment:.trailing)
                
                Text(text)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text(subtext)
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                
                Button(action: {}, label: {
                    Text(buttonLable)
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

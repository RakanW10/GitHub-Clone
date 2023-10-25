//
//  RowView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct RowView: View{
    let data : RowModel
    var body: some View {
        HStack{
            Image(systemName: data.imageName)
                .resizable()
                .foregroundStyle(data.imageForegroundColor)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(data.imageBackgroundColor)
                        .frame(width: 32,height: 32)
                )
                .frame(width: 22,height: 22)
                .padding(.trailing)
            Text(data.title)
                .frame(maxWidth: .infinity,alignment: .leading)
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 8, height: 16)
                .foregroundStyle(.gray)
        }//HStack
        .frame(height: 60)
    }
}

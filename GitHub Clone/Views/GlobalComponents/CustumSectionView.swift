//
//  CustomSectionView.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct CustomSectionView: View{
    var title: String? = nil
    let rows: [RowModel]
    var body: some View{
        VStack{
            // Header
            if let titleString = title{
                HStack{
                    Text(titleString)
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22,height: 22)
                        .foregroundStyle(.gray.opacity(0.5))
                }//: HStack
            }
            VStack (spacing:0){
                ForEach(rows) {row in
                    RowView(data: row)
                        .padding(.horizontal)
                    if(row.id != rows.last?.id){
                        Divider()
                            .padding(.leading,40)
                    }
                }
            }//:VStack1
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white.opacity(0.25))
            )
        }//: VStack0
        .padding([.horizontal,.bottom])
    }
}

struct CustomSectionView_Preview: PreviewProvider{
    static var previews: some View{
        CustomSectionView(
            title: "Title", rows: RowModel.HomeRows
        )
    }
}

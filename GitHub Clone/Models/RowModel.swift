//
//  RowModel.swift
//  GitHub Clone
//
//  Created by Rakan Alotaibi on 10/04/1445 AH.
//
import SwiftUI

struct RowModel: Identifiable{
    let id = UUID()
    let title: String
    let imageName: String
    let imageBackgroundColor: Color
    let imageForegroundColor: Color = .white
    var trailingNumber: Int? = nil
}

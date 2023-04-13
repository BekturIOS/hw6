//
//  CustomText.swift
//  hw6
//
//  Created by Бектур Каримов on 13/4/23.
//

import Foundation
import SwiftUI


struct CustomText: View {
    var text: String
    var color: Color?
    var size: CGFloat?
    var font: Font.Weight?
    var body: some View {
       Text(text)
            .foregroundColor(color)
            .fontWeight(font)
            .font(.custom("", size: size ?? 0))
        
    }
}


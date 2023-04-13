//
//  HorizontalSlider.swift
//  hw6
//
//  Created by Бектур Каримов on 16/4/23.
//

import Foundation
import SwiftUI


struct HorizontalSlider: View {
    var title: String
    var image: Image
    var isSelected: Bool
    var body: some View {
        HStack {
           
            CustomImage(image: image)
                .foregroundColor(isSelected ? .white : .black)
                .padding(isSelected ? .horizontal : .all, 15)
                .background(!isSelected ? Color(.white) : .clear)
                .cornerRadius(16)
                .shadow(color: Color(.black).opacity(0.2), radius: 8, x: 0, y: 2)
            if isSelected {
                Text(title)
                .font(.custom("",size: 17))
                .foregroundColor(.white)
            }
        }
        .padding(.all, 15)
        .background(Capsule().foregroundColor(isSelected ? .black : .clear))
        .background(isSelected ? .white : .clear)
        .cornerRadius(10)
        
    }
}

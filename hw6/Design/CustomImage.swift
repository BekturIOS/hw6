//
//  CustomImage.swift
//  hw6
//
//  Created by Бектур Каримов on 13/4/23.
//

import Foundation
import SwiftUI



struct CustomImage: View {
    var image: Image
    var size: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    
    var body: some View {
        image
            .frame(width: width, height: height)
            .font(.custom("", size: size ?? 0))
    }
}


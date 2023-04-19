//
//  CustomButton.swift
//  hw6
//
//  Created by Бектур Каримов on 13/4/23.
//

import Foundation
import SwiftUI
struct CustomButton: View {
    var image: Image
    var color: Color?
    var tint: Color?
    var width: CGFloat?
    var height: CGFloat?
    
    //    var corner: Float
    var body: some View {
        Button {
            //
        } label: {
            image
                .background(color)
                .foregroundColor(tint)
                .frame(width: width, height: height)
        }
    }
}



//
//  TabbarView.swift
//  hw6
//
//  Created by Бектур Каримов on 16/4/23.
//

import Foundation
import SwiftUI


struct TabbarView: View{
    let image: Image
    let action: () -> Void
    var body: some View {
        Button(action: action){
            image
                .frame(maxWidth: .infinity)
                .padding()
        }
        .foregroundColor(.white)
    }
}


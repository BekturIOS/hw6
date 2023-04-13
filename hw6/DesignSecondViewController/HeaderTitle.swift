//
//  HeaderTitle.swift
//  hw6
//
//  Created by Бектур Каримов on 17/4/23.
//

import Foundation
import SwiftUI


struct HeaderTitle: View{
    var titleText: String
    var body: some View{
        Text(titleText)
            .font(.custom("Avenir Next", size: 18))
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

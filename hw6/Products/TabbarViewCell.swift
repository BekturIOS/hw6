//
//  TabbarView.swift
//  hw6
//
//  Created by Бектур Каримов on 18/4/23.
//

import Foundation
import SwiftUI




struct TabbarViewCell: View {
    var body: some View {
        HStack{
            TabbarView(image: Image("home")) {
                print("home")
            }
            TabbarView(image: Image("wallet")) {
                print("no money)")
            }
            TabbarView(image: Image("chat")) {
                print("chat")
            }
            TabbarView(image: Image("person")) {
                print("me")
            }
        }
        .padding()
        .background(.black)
        .clipShape(Capsule())
        .padding()
        .frame(maxWidth: .infinity, alignment: .bottom)
    }
}



//
//  ListOfOrder.swift
//  hw6
//
//  Created by Бектур Каримов on 17/4/23.
//

import Foundation
import SwiftUI


struct ListOfOrder: View{
    var image: Image
    var title: String
    var address: String
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                image
                    .padding(.trailing)
                
                VStack(alignment: .leading){
                    Text(title)
                        .font(.custom("Avenir Next", size: 12))
                        .foregroundColor(.black)
                    Text(address)
                        .font(.custom("Avenir Next", size: 12))
                        .foregroundColor(.gray)
                }
            }
            Divider()
        }
        .padding(.horizontal)
    }
}


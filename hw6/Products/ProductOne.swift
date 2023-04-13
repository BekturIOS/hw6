//
//  ProductOne.swift
//  hw6
//
//  Created by Бектур Каримов on 15/4/23.
//

import Foundation
import SwiftUI


struct ProductOne: View {
    var image: Image
    var discr: String
    var text: String
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                CustomImage(image: image)
                CustomText(text: discr,
                           font: .bold
                )
                Text(text)
                .font(.custom("", size: 10))
                .lineLimit(11)
                .foregroundColor(.gray)
                
                
                HStack{
                    CustomButton(image: Image(systemName:"star.fill"),
                                 tint: .black
                    )
                    .font(.custom("", size: 10))
                    
                    CustomText(text: "4.5",
                               color: .black,
                               font: .bold)
                        .font(.custom("", size: 15))
                    
                    CustomButton(image: Image(systemName:"moonphase.new.moon"), tint: .gray)
                        .font(.custom("", size: 6))
                    
                    CustomImage(image: Image(systemName: "clock"),
                                size: 14,
                                height: 8)
                    .foregroundColor(.black)
                    
                    CustomText(text: "35 Mins",
                               color: .black,
                               size: 13,
                               font: .bold)
                }
                .padding(.trailing)
            }
            .padding(.all)
            .background(.white)
            .cornerRadius(30)
            .shadow(color: Color(.black).opacity(0.1), radius: 12, x: 0, y: 2)
            
            
        }
    }
}

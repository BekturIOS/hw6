//
//  ProductTwo.swift
//  hw6
//
//  Created by Бектур Каримов on 19/4/23.
//

import Foundation
import SwiftUI



struct ProductTwo: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading,spacing: 10){
                CustomText(text: "Paul",
                           size: 18,
                           font: .bold)
                
                CustomText(text: "French Pasta\nDelivery: FREE • Minimum: $0",
                           color: .gray)
                
                HStack(alignment: .center){
                    CustomButton(image: Image(systemName:"star.fill"),
                                 tint: .black
                    )
                    .font(.custom("", size: 10))
                    
                    CustomText(text: "4.5",
                               color: .black,
                               font: .bold)
                        .font(.custom("", size: 15))
                    
                    CustomButton(image: Image(systemName:"moonphase.new.moon"),
                                 tint: .gray)
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
                .padding(.leading)
            }
            CustomImage(image: Image("food1"), width: 160)
            
        }
        .padding(.all, 10)
        .background(.white)
        .cornerRadius(40)
        .shadow(color: Color(.black).opacity(0.1), radius: 12, x: 0, y: 2)
    }
}

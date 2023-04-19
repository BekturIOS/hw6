//
//  NavigationBAr.swift
//  hw6
//
//  Created by Бектур Каримов on 13/4/23.
//

import Foundation
import SwiftUI

struct NavigationBar: View {
    var body: some View {
       
            HStack{
                CustomButton(image: Image("menu"))
                HStack{
                    Spacer()
                    VStack{
                        CustomText(
                            text: "Delivery to",
                            color: Color(.gray),
                            font: .thin                      )
                        CustomText(
                            text: "Manas Ave",
                            color: Color(.black),
                            font: .bold)
                    }
                    
                    CustomButton(image: Image("vector"))
                    Spacer()
                   
                    NavigationLink(destination: SecondView(),
                                   label:  { Image("basket")
                            .frame(width: 50, height: 50)
                                   
                    })
                    .cornerRadius(15)
                
                    .frame(width: 30, height: 30)
                .padding(.horizontal)
            }
        }
    }
}

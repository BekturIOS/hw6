//
//  SezrchBar.swift
//  hw6
//
//  Created by Бектур Каримов on 15/4/23.
//

import Foundation
import SwiftUI



struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        HStack {
            HStack{
                CustomImage(image: Image("search"))
                
                TextField("Find restaurant by name ", text: $text)
            }
            .padding(.all, 20)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: Color(.black).opacity(0.1), radius: 12, x: 0, y: 2)
            
            
            
            CustomButton(image: Image("settings"))
                .padding()
        }
        
    }
}

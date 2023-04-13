//
//  SecondView.swift
//  hw6
//
//  Created by Бектур Каримов on 16/4/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("gray1")
                    .ignoresSafeArea(.all)
                ScrollView{
                    VStack{
                        HeaderTitle(titleText: "Choose delivary location")
                        ForEach(0..<2){ item in
                            ListOfOrder(image: Image("region"),
                                        title: "delivary to currently location",
                                        address: "Manas Ave")
                        }
                        HeaderTitle(titleText: "Saved Area")
                        
                        ListOfOrder(image: Image(systemName: "house"),
                                    title: "home",
                                    address: "Mahatma Ghandi 205a")
                        ListOfOrder(image: Image("work"),
                                    title: "Work",
                                    address: "Ibrayimova 117")
                        ListOfOrder(image: Image("hotel"), title: "Hotel", address: "Manasa 8")
                    }
                    HStack{
                        VStack{
                            
                                CustomText(text: "Bektur",
                                           font: .bold)
                         
                        }
                    }
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}






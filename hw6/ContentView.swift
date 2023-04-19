//
//  ContentView.swift
//  hw6
//
//  Created by Бектур Каримов on 13/4/23.
//

import SwiftUI

struct ContentView: View {
    var categories: [Image] = [
        Image("delivery"),
        Image("bag"),
        Image("bell"),
        Image("car"),
        Image("disc")
    ]

    @State var select: Int = 0
    var foodImage: [Image] = [
        
        Image("food2"),
        Image("food3")]
    
    @State var discr: [String] = [ "Momos", "Paul"]
    
    @State var textFromProduct: [String] = [
        "Japanese Delivery:\nFREE • Minimum: $10",
        "French Pasta\nDelivery: FREE • Minimum: $0"]
    
    @State var textFromSearch: String = ""
    
    @State var textGreasdf: String = ""
    var tittle: [String] = ["Delivery", "bag", "bell", "cars","disc"]
    var body: some View {
        NavigationView{
            ZStack {
                Color("gray1")
                    .ignoresSafeArea(.all)
                VStack{
                    
                   
                    ScrollView(.vertical,showsIndicators: true) {
                        VStack (alignment: .leading, spacing: 20) {
                            NavigationBar()
                            
                            //                Text(textGreasdf)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 10){
                                    ForEach(0..<categories.count){ item in
                                        HorizontalSlider(
                                            title: tittle[item],
                                            image: categories[item],
                                            isSelected:  item == select )
                                        .onTapGesture {
                                            select = item
                                            //                                        print("\(select)")
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                            CustomText(text: "56 stores open",color: .black, size: 20, font: .bold )
                            
                            
                            SearchBar(text: $textFromSearch)
                            
                            HStack {
                                ScrollView(.horizontal, showsIndicators: true){
                                    HStack{
                                        ForEach(0..<foodImage.count){ item in
                                            ProductOne(image: foodImage[item],
                                                       discr: discr[item],
                                                       text: textFromProduct[item])
                                        }
                                        .padding(.horizontal)
                                    }
                                }
                                
                            }
                            ProductTwo()
                        }
                        .padding()
                        
                    }
                    Spacer()
                    TabbarViewCell()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








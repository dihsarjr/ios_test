//
//  FruitDetailsView.swift
//  Fructus
//
//  Created by Rashid on 20/12/21.
//

import SwiftUI

struct FruitDetailsView: View {
    var fruit: FruitModel
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEAD LINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        FruitNutrientsView(fruit: fruit)
                        //LEARN MORE
                        Text("Learn More About \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK VIEW
                        SourceLinkView().padding(.top,10)
                    }.padding(.horizontal,20).frame(maxWidth:640,alignment: .center)
                }.navigationBarTitle(fruit.title,displayMode: .inline).navigationBarHidden(true)
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitData[0]).previewDevice("iPhone 13")
    }
}

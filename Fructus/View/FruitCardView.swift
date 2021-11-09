//
//  FruitCardView.swift
//  Fructus
//
//  Created by Rashid on 09/11/21.
//

import SwiftUI

//MARK : PROPERTY


//MARK : BODY
struct FruitCardView: View {
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                Text("BLUEBERRY")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
            }
        }.frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")], startPoint: .top, endPoint: .bottom)).cornerRadius(20)
    }
}


//MARK : PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView().previewLayout(.fixed(width: 320, height: 640))
    }
}

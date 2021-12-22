//
//  FruitCardView.swift
//  Fructus
//
//  Created by Rashid on 09/11/21.
//

import SwiftUI





struct FruitCardView: View {
    //MARK : PROPERTY
    var fruit:FruitModel
    @State private var isAnimating:Bool = false

    //MARK : BODY
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8).scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
                Text(fruit.headline).foregroundColor(.white).multilineTextAlignment(.center).padding(.horizontal,20).frame(maxWidth:480)
                StartButtonView()
            }
        }.onAppear{withAnimation(.easeOut(duration: 0.7)){
            isAnimating = true
        }}
        
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [fruit.gradientColors[0],fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)).cornerRadius(20).padding(.horizontal,20)
    }
}


//MARK : PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[0]).previewLayout(.fixed(width: 320, height: 640))
    }
}

//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Rashid on 20/12/21.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: FruitModel
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomLeading)
            Image(fruit.image).resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8, x: 6, y: 8).padding(.vertical,20)
                .scaleEffect(isAnimating ? 1.0 : 0.5)
        }.frame(height:440).onAppear(){
            withAnimation(.easeOut(duration: 0.8)){
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0]).previewLayout(.fixed(width: 375, height: 440))
    }
}

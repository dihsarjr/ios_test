//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rashid on 02/12/21.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [FruitModel] = fruitData
    
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5])
            {item in  FruitCardView(fruit: item)}
           
        }.tabViewStyle(PageTabViewStyle())
            .padding(.vertical,20)
       
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

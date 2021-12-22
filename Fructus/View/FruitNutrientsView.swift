//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Rashid on 22/12/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: FruitModel
    let nutrients: [String] = [
    "Energy","Suger","Fat","Protein","Vitamins","Minarals"];
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional values per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[0])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                    }
                }
            }
           }
    
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480)).padding()
    }
}

//
//  ContentView.swift
//  Fructus
//
//  Created by Rashid on 05/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits:[FruitModel] = frutData
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(fruits.shuffled()){ item in
                    FruitRowView(fruit: item)
                        .padding(.vertical,4)
                }
            }.navigationTitle("Fruit")
           
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13")
    }
}

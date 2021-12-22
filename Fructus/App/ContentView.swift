//
//  ContentView.swift
//  Fructus
//
//  Created by Rashid on 05/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits:[FruitModel] = fruitData
    
    @State private var isShowing: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
               
                }
            }.navigationTitle("Fruit")
                .navigationBarItems(trailing: Button(action: {
                   isShowing = true
                }){
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowing){
                    SettingsView()
                }
            )
           
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13")
    }
}

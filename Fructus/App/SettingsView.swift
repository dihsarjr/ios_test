//
//  SettingsView.swift
//  Fructus
//
//  Created by Rashid on 22/12/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:20) {
                    GroupBox(label: SettingsLabelView(labelText: "Frutuse", labelImage: "info.circle")) {
                    Divider()
                    .padding(.vertical, 4)
                        HStack(alignment: .top, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80
                                       , height: 80)
                            Text("In botany, a fruit is the seed-bearing structure in flowering plants that is formed from the ovary after flowering. Fruits are the means by which flowering plants disseminate their seeds.").font(.footnote)
                        }
                        
                    }
                    
                    GroupBox(label: SettingsLabelView(labelText: "APPLICATION", labelImage: "apps.iphone")){
                        Divider().padding(.vertical, 4)
                        SettingsRowView(labelLeading: "Developer", labelTrailing: "Rashid")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large).navigationBarItems(trailing: Button(action: {
                    presentaionMode.wrappedValue.dismiss();
                }){Image(systemName: "xmark")})
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}

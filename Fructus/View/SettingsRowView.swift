//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rashid on 22/12/21.
//

import SwiftUI

struct SettingsRowView: View {
    var labelLeading: String
    var labelTrailing: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        HStack{
            Text(labelLeading).foregroundColor(Color.gray)
            Spacer()
            if (labelTrailing != nil) {
                Text(labelTrailing!)
            } else if(linkLabel != nil && linkLabel != nil) {
                
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(labelLeading: "String", labelTrailing: "String")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}

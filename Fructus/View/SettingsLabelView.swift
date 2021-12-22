//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Rashid on 22/12/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frutuse", labelImage: "info.circle").previewLayout(.sizeThatFits).padding()
    }
}

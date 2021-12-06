//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rashid on 02/12/21.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action:{print("hi")}){HStack(spacing:8) {
            Text("Start")
            Image(systemName: "arrow.right.circle").imageScale(.large)
        }.padding(.horizontal,16)
                .padding(.vertical,5).background(Capsule().strokeBorder(.white,lineWidth: 1.25))
            
        }.accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().previewLayout(.sizeThatFits)
    }
}

//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Rashid on 20/12/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Sources")
                Spacer()
                Link("Google",destination: URL(string: "https://www.google.com/")!)
                Image(systemName: "arrow.up.right.square")
            }.font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits).padding()
    }
}

//
//  xDismissButton.swift
//  Appetizers
//
//  Created by joao camargo on 13/06/21.
//

import SwiftUI

struct xDismissButton: View {
    var body: some View {
        ZStack {
            Circle().frame(width: 30, height: 30).foregroundColor(.white).opacity(0.6)
            Image(systemName: "xmark").imageScale(.small).frame(width: 44, height: 44, alignment: .center)
                .foregroundColor(.black)
        }
    }    
}

struct xDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        xDismissButton()
    }
}

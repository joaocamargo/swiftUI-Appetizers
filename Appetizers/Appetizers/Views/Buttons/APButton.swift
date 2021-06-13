//
//  APButton.swift
//  Appetizers
//
//  Created by joao camargo on 13/06/21.
//

import SwiftUI

struct APButton: View {
    
    @State var title: LocalizedStringKey
    
    var body: some View {
        Text(title).foregroundColor(.white)
            .font(.title3).fontWeight(.semibold)
            .frame(width:260, height: 50).background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: " Add To Order")
    }
}

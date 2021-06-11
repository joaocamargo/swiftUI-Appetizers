//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by joao camargo on 11/06/21.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            Image("steak").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name).font(.title2).fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")").foregroundColor(.secondary).fontWeight(.semibold)
            }.padding(.leading)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}

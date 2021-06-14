//
//  EmptyState.swift
//  Appetizers
//
//  Created by joao camargo on 14/06/21.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName).resizable().scaledToFit().frame(height: 150)
                
                Text(message).font(.title3).fontWeight(.semibold)
                    .multilineTextAlignment(.center).foregroundColor(.secondary).padding()
            }.offset(y: -50.0)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "This is our test messafges. I am making it a little long for testing.")
    }
}

//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }.onAppear(perform: viewModel.getAppetizers)
    }   
}


struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}

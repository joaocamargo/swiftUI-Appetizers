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
        ZStack{
            NavigationView {
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .sheet(isPresented: $viewModel.isShowingDetail){
                            AppetizerDetailView(appetizer: appetizer)
                        }
                }
               
                .navigationTitle("🍟 Appetizers")
            }.onAppear(perform: viewModel.getAppetizers)
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButon)
        }
    }
}


struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}

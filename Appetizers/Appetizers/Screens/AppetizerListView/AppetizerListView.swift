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
                        .onTapGesture {
                            viewModel.selectedApetizer = appetizer
                            withAnimation(.easeIn(duration: 0.4)) {
                                viewModel.isShowingDetail = true
                            }
                            
                        }                            
                    }
                        .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
                }.onAppear(perform: viewModel.getAppetizers)
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
                
                //precisa ser antes do view loading
                if viewModel.isShowingDetail {
                    
                    AppetizerDetailView(appetizer: viewModel.selectedApetizer!,
                                        isShowingDetail: $viewModel.isShowingDetail)
                }
                
                
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

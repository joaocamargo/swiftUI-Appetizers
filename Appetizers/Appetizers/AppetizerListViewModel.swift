//
//  ApptizerListViewModel.swift
//  Appetizers
//
//  Created by joao camargo on 11/06/21.
//

import Foundation
import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
        @Published var appetizers: [Appetizer] = []

    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
    
    //Result<[T], APError>
    
//    func getAppetizers2(){
//        NetworkManager.shared.get { result  in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//                case.failure(let error):
//                    print(error.localizedDescription)
//                }
//            }
//        }
//    }
}

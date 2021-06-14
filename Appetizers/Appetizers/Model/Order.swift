//
//  Order.swift
//  Appetizers
//
//  Created by joao camargo on 14/06/21.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        print(items.reduce(0) { $0 + $1.price})
        return items.reduce(0) { $0 + $1.price}        
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offSets: IndexSet){
        items.remove(atOffsets: offSets)
    }
    
}

//
//  OrderView.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.appetizer
    
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(orderItems) { item in
                        AppetizerListCell(appetizer: item)
                    }.onDelete(perform: deleteItem)
                }.listStyle(PlainListStyle())
                
                Button {
                    
                } label: {
                    APButton(title: "$ 99.99 - Place Order")
                }.padding(.bottom, 25)
            }
         .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItem(at offSets: IndexSet){
        orderItems.remove(atOffsets: offSets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

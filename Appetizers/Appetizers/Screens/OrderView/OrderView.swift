//
//  OrderView.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    //@State private var orderItems = MockData.appetizer
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List {
                        ForEach(order.items) { item in
                            AppetizerListCell(appetizer: item)
                        }.onDelete(perform: order.deleteItems)
                    }.listStyle(PlainListStyle())
                    
                    Button {
                        print(order.totalPrice)
                    } label: {
                        APButton(title: "$ \(order.totalPrice,specifier: "%.2f") - Place Order")
                    }.padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in you order. \nPlease add an appetizer.")
                }
            }
         .navigationTitle("🧾 Orders")
        }
    }

}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

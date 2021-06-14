//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by joao camargo on 12/06/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer : Appetizer
    @Binding var isShowingDetail: Bool
    
    
    var body: some View {
        VStack {
            
            ZStack{
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    //Image("foodSample").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225, alignment: .center).background(Color.red)
                //                    .overlay(
                //                        withAnimation(.linear.delay(10)) {
                //                            CloseButton(isShowingDetail: $isShowingDetail)
                //                        }.imageScale(.small).padding(8), alignment: .topTrailing)
            }
            
            
            VStack(spacing: 10) {
                Text(appetizer.name).font(.title2).fontWeight(.semibold).frame(alignment: .center)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                Text(appetizer.description).fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading).font(.body)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                Spacer()
                HStack(spacing: 40){
                    itemDetails(title: "Calories", value: appetizer.calories)
                    itemDetails(title: "Carbs", value: appetizer.carbs)
                    itemDetails(title: "Protein", value: appetizer.protein)
                }
                
                Spacer()
                Button(action: {
                    order.add(appetizer)
                    isShowingDetail = false
                }, label: {
                    APButton(title: "$ \(appetizer.price,specifier: "%.2f") - Add To Order")
                }).padding(.bottom,30)
            }
        }
        .frame(width: 300, height:525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(CloseButton(isShowingDetail: $isShowingDetail),alignment: .topTrailing)
        
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}

struct CloseButton: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        Button(action: {
            isShowingDetail = false
        }, label: {
            xDismissButton()
        })
    }
}


struct itemDetails: View {
    
    @State var title: String
    @State var value: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(title).bold().font(.caption)
            Text("\(value)").foregroundColor(.secondary).fontWeight(.semibold).italic()
        }
    }
}

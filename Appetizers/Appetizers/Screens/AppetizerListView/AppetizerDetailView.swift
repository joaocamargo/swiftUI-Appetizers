//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by joao camargo on 12/06/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer : Appetizer
    
    var body: some View {
        VStack {
            
            ZStack{
                //AppetizerRemoteImage(urlString: "foodSample")
                Image("foodSample").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225, alignment: .center).background(Color.red)
                    .overlay(CloseButton().imageScale(.small).padding(8), alignment: .topTrailing)
            }
            
            
            VStack(spacing: 20) {
                Text(appetizer.name).font(.title2).fontWeight(.semibold)
                Text(appetizer.description).multilineTextAlignment(.center).font(.body)

                HStack(spacing: 40){
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        Text("Calories").bold().font(.caption)
                        Text("\(appetizer.calories)").foregroundColor(.secondary).fontWeight(.semibold).italic()
                    }
                    
                    VStack(alignment: .center, spacing: 10) {
                        Text("Carbs").bold().font(.caption)
                        Text("\(appetizer.carbs) g").foregroundColor(.secondary).fontWeight(.semibold).italic()
                    }
                    
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        Text("Protein").bold().font(.caption)
                        Text("\(appetizer.protein) g").foregroundColor(.secondary).fontWeight(.semibold).italic()
                    }
                }
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("$ \(appetizer.price,specifier: "%.2f") - Add To Order").foregroundColor(.white)
                        .font(.title3).fontWeight(.semibold)
                        .frame(width:260, height: 50).background(Color.brandPrimary)
                        .cornerRadius(10)
                }).padding(.bottom,30)
            }
        }.frame(width: 300, height:525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
    }
}

struct CloseButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "xmark").foregroundColor(.black).frame(width: 30, height: 30).background(Color.white.opacity(0.7))
                .cornerRadius(30)
        })
    }
}



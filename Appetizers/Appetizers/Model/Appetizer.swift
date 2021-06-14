//
//  Apptizer.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    var id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let carbs: Int
    let calories: Int
}

struct AppetizerResponse : Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Chicken Avocado Spring Roll", description: "this is a descripti ondescr iptiondes cription description  d escrip tionde scription for appetizer",
                                           price: 20.0, imageURL: "", protein: 10, carbs: 20, calories: 300)
    
    static let orderItemOne = Appetizer(id: 0002, name: "Chicken Avocado Spring Roll", description: "this is a descripti ondescr iptiondes cription description  d escrip tionde scription for appetizer",
                                           price: 20.0, imageURL: "", protein: 10, carbs: 20, calories: 300)
    
    static let orderItemTwo = Appetizer(id: 0003, name: "Chicken Avocado Spring Roll", description: "this is a descripti ondescr iptiondes cription description  d escrip tionde scription for appetizer",
                                           price: 20.0, imageURL: "", protein: 10, carbs: 20, calories: 300)
    
    static let orderItemThree = Appetizer(id: 0004, name: "Chicken Avocado Spring Roll", description: "this is a descripti ondescr iptiondes cription description  d escrip tionde scription for appetizer",
                                           price: 20.0, imageURL: "", protein: 10, carbs: 20, calories: 300)
    
    
    static let appetizer = [sampleAppetizer, orderItemOne, orderItemTwo, orderItemThree]
    
}




//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}

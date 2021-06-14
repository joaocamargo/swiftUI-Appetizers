//
//  Alert.swift
//  Appetizers
//
//  Created by joao camargo on 11/06/21.
//


import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButon: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network alerts
    
    static let invalidDeviceInput = AlertItem(title: Text("Invalid device input"), message: Text("something is wrong with the camera."), dismissButon: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: Text("Invalid scanned item"), message: Text("value scanned is no valid."), dismissButon: .default(Text("OK")))
    
    
    static let invalidData      = AlertItem(title: Text("Server error"), message: Text("The data received from the server was invalid. Contact support"), dismissButon: .default(Text("OK")))
    static let invalidResponse  = AlertItem(title: Text("Server error"), message: Text("Invalid Response from the server."), dismissButon: .default(Text("OK")))
    static let invalidURL       = AlertItem(title: Text("Server error"), message: Text("There was an issue connecting to the server"), dismissButon: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server error"), message: Text("Unable to complete your request at this time. Check your internet."), dismissButon: .default(Text("OK")))


    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in this form have been filled out."), dismissButon: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid email"), message: Text("Please ensure your emsil is valid"), dismissButon: .default(Text("OK")))

    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("User profile was successfully saved."), dismissButon: .default(Text("OK")))
    static let userErrorOnSaveOrLoad = AlertItem(title: Text("Profile not saved or loaded correctly"), message: Text("User profile throwed an error while saving or loading."), dismissButon: .default(Text("OK")))

    
}

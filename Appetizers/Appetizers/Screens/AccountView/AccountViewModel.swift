//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by joao camargo on 13/06/21.
//
import SwiftUI
import Foundation

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
   
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.userErrorOnSaveOrLoad
        }
        
        print("Changes have been saved successfully")
    }

    
    func retrieveUser() {
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.userErrorOnSaveOrLoad 
        }
    }
    
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    
    
    
}
